import 'package:flutter/material.dart';
import 'package:chewie/chewie.dart';
import 'package:get/get.dart';
import 'package:strategi_hub_app/constant/colors_constant.dart';
import 'package:strategi_hub_app/constant/sizes_constant.dart';
import 'package:video_player/video_player.dart';
import 'package:webview_flutter/webview_flutter.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:flutter/services.dart';

class CctvPlayerFullScreen extends StatefulWidget {
  static const routeName = '/cctv-player-full-screen';
  final String streamUrl;
  final bool isEmbed;
  final bool? isCCtv;
  final bool? autoPlay;
  final String? title;
  final String? name;
  final String? description;
  final String? status;

  const CctvPlayerFullScreen({
    super.key,
    required this.streamUrl,
    required this.isEmbed,
    this.autoPlay = false,
    this.title,
    this.isCCtv,
    this.name,
    this.description,
    this.status,
  });

  @override
  State<CctvPlayerFullScreen> createState() => _CctvPlayerFullScreenState();
}

class _CctvPlayerFullScreenState extends State<CctvPlayerFullScreen> {
  VideoPlayerController? _videoPlayerController;
  ChewieController? _chewieController;
  WebViewController? _webViewController;
  YoutubePlayerController? _youtubePlayerController;
  bool _hasError = false;
  bool _showControls = true;

  @override
  void initState() {
    super.initState();
    _initializeStream();
    // Set initial orientation to landscape
    if (!_isYoutubeUrl(widget.streamUrl)) {
      SystemChrome.setPreferredOrientations([
        DeviceOrientation.landscapeLeft,
        DeviceOrientation.landscapeRight,
      ]);
      SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersiveSticky);
    } else {
      // Hide system UI
      SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersive);
    }
  }

  Future<void> _initializeStream() async {
    if (widget.streamUrl.isEmpty) {
      setState(() => _hasError = true);
      return;
    }

    if (widget.isEmbed) {
      if (_isYoutubeUrl(widget.streamUrl)) {
        _initializeYoutubePlayer();
      } else {
        _initializeWebView();
      }
    } else {
      await _initializePlayer();
    }
  }

  bool _isYoutubeUrl(String url) {
    return url.contains('youtube.com') || url.contains('youtu.be');
  }

  void _initializeYoutubePlayer() async {
    try {
      await _cleanupControllers();
      final videoId = YoutubePlayerController.convertUrlToId(widget.streamUrl);
      if (videoId != null) {
        _youtubePlayerController = YoutubePlayerController.fromVideoId(
          videoId: videoId,
          autoPlay: widget.autoPlay ?? false,
          params: const YoutubePlayerParams(
            showFullscreenButton: false,
            showControls: false,
            mute: false,
          ),
        );
        setState(() {
          _hasError = false;
        });
      } else {
        setState(() => _hasError = true);
      }
    } catch (e) {
      setState(() => _hasError = true);
    }
  }

  Future<void> _initializePlayer() async {
    try {
      await _cleanupControllers();

      final controller = VideoPlayerController.network(widget.streamUrl);
      _videoPlayerController = controller;

      await controller.initialize();

      final chewieController = ChewieController(
        videoPlayerController: controller,
        aspectRatio: controller.value.aspectRatio,
        autoPlay: true,
        looping: true,
        showControlsOnInitialize: false,
        showControls: false,
        isLive: true,
      );

      if (mounted) {
        setState(() {
          _chewieController = chewieController;
          _hasError = false;
        });
      } else {
        controller.dispose();
        chewieController.dispose();
      }
    } catch (error) {
      if (mounted) {
        setState(() => _hasError = true);
      }
      await _cleanupControllers();
    }
  }

  Future<void> _cleanupControllers() async {
    if (_chewieController != null) {
      await _chewieController!.pause();
      _chewieController!.dispose();
      _chewieController = null;
    }

    if (_videoPlayerController != null) {
      await _videoPlayerController!.dispose();
      _videoPlayerController = null;
    }

    if (_youtubePlayerController != null) {
      _youtubePlayerController = null;
    }
  }

  void _initializeWebView() {
    _webViewController = WebViewController()
      ..setJavaScriptMode(JavaScriptMode.unrestricted)
      ..loadRequest(Uri.parse(widget.streamUrl));
  }

  @override
  void didUpdateWidget(covariant CctvPlayerFullScreen oldWidget) {
    super.didUpdateWidget(oldWidget);

    if (oldWidget.streamUrl != widget.streamUrl) {
      _initializeStream();
    }
  }

  @override
  void dispose() {
    _cleanupControllers();
    // Revert to the default orientation
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
    ]);
    // Show system UI
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.edgeToEdge);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Stack(
          children: [
            InkWell(
              splashColor: Colors.transparent,
              onTap: () {
                setState(() {
                  _showControls = !_showControls;
                });
              },
              child: Center(
                child: Builder(
                  builder: (context) {
                    if (widget.status == 'offline') {
                      return _buildOfflineWidget();
                    }
                    if (widget.isEmbed) {
                      if (_isYoutubeUrl(widget.streamUrl)) {
                        return _buildYoutubePlayerWidget();
                      }
                      return _buildWebViewWidget();
                    }
                    if (_hasError) {
                      return _buildErrorWidget();
                    }
                    if (_chewieController != null &&
                        (_videoPlayerController?.value.isInitialized ??
                            false)) {
                      return _buildChewieWidget();
                    }
                    return _buildLoadingWidget();
                  },
                ),
              ),
            ),
            if (_showControls) _buildFloatingControls(),
            if (_showControls) _buildFloatingMinimize(),
          ],
        ),
      ),
    );
  }

  Widget _buildOfflineWidget() {
    return AspectRatio(
      aspectRatio: 16 / 9,
      child: Center(
        child: Text(
          'CCTV offline',
          style: TextStyle(color: Colors.red),
        ),
      ),
    );
  }

  Widget _buildWebViewWidget() {
    return AspectRatio(
      aspectRatio: 16 / 9,
      child: _webViewController != null
          ? WebViewWidget(controller: _webViewController!)
          : Center(child: CircularProgressIndicator()),
    );
  }

  Widget _buildYoutubePlayerWidget() {
    return AspectRatio(
      aspectRatio: 16 / 9,
      child: _youtubePlayerController != null
          ? YoutubePlayerScaffold(
              controller: _youtubePlayerController!,
              aspectRatio: 16 / 9,
              autoFullScreen: true,
              enableFullScreenOnVerticalDrag: false,
              builder: (context, player) {
                return player;
              },
            )
          : Center(child: CircularProgressIndicator()),
    );
  }

  Widget _buildErrorWidget() {
    return AspectRatio(
      aspectRatio: 16 / 9,
      child: Center(
        child: Text(
          'Error loading video',
          style: TextStyle(color: Colors.red),
        ),
      ),
    );
  }

  Widget _buildChewieWidget() {
    return AspectRatio(
      aspectRatio: _videoPlayerController?.value.aspectRatio ?? 16 / 9,
      child: Chewie(controller: _chewieController!),
    );
  }

  Widget _buildLoadingWidget() {
    return AspectRatio(
      aspectRatio: 16 / 9,
      child: Center(
        child: CircularProgressIndicator(),
      ),
    );
  }

  Widget _buildInfoContainer() {
    return Container(
      width: Get.width,
      decoration: BoxDecoration(
        gradient: const LinearGradient(
          begin: Alignment.bottomLeft,
          end: Alignment.topRight,
          colors: [
            AppColors.darkColor,
            AppColors.secondaryColor,
          ],
        ),
      ),
      padding: EdgeInsets.symmetric(horizontal: Sizes.s20, vertical: Sizes.s10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Visibility(
            visible: widget.name != null && widget.name!.isNotEmpty,
            child: Text(
              widget.name ?? '',
              style: Get.textTheme.bodySmall!.copyWith(
                fontWeight: FontWeight.w600,
                color: AppColors.whiteColor,
              ),
            ),
          ),
          SizedBox(height: Sizes.s4),
          Visibility(
            visible:
                widget.description != null && widget.description!.isNotEmpty,
            child: Text(
              widget.description ?? '',
              style: Get.textTheme.bodySmall!.copyWith(
                fontWeight: FontWeight.w600,
                fontSize: FontSizes.s10,
                color: AppColors.whiteColor,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildFloatingControls() {
    return Positioned(
      bottom: 20,
      left: 20,
      right: 20,
      child: _buildInfoContainer(),
    );
  }

  Widget _buildFloatingMinimize() {
    return Positioned(
      top: 20,
      right: 20,
      child: IconButton(
        onPressed: () {
          Navigator.pop(context);
        },
        icon: Icon(Icons.fullscreen_exit),
      ),
    );
  }
}

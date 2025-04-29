import 'package:flutter/material.dart';
import 'package:chewie/chewie.dart';
import 'package:get/get.dart';
import 'package:strategi_hub_app/constant/colors_constant.dart';
import 'package:strategi_hub_app/constant/sizes_constant.dart';
import 'package:strategi_hub_app/modules/cctv/views/cctv_player_full_screen.dart';
import 'package:video_player/video_player.dart';
import 'package:webview_flutter/webview_flutter.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';

class CctvPlayer extends StatefulWidget {
  final String streamUrl;
  final bool isEmbed;
  final bool? isCCtv;
  final bool? autoPlay;
  final String? title;
  final String? name;
  final String? description;
  final String? status;

  const CctvPlayer({
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
  State<CctvPlayer> createState() => _CctvPlayerState();
}

class _CctvPlayerState extends State<CctvPlayer> {
  VideoPlayerController? _videoPlayerController;
  ChewieController? _chewieController;
  WebViewController? _webViewController;
  YoutubePlayerController? _youtubePlayerController;
  bool _hasError = false;

  @override
  void initState() {
    super.initState();
    _initializeStream();
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
  void didUpdateWidget(covariant CctvPlayer oldWidget) {
    super.didUpdateWidget(oldWidget);

    if (oldWidget.streamUrl != widget.streamUrl) {
      _initializeStream();
    }
  }

  @override
  void dispose() {
    _cleanupControllers();
    print('CCTV Player disposed');
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Visibility(
          visible: widget.title != null,
          child: _buildTitleContainer(),
        ),
        Stack(
          children: [
            Builder(
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
                    (_videoPlayerController?.value.isInitialized ?? false)) {
                  return _buildChewieWidget();
                }
                return _buildLoadingWidget();
              },
            ),
            Positioned(
              top: Sizes.s12,
              right: Sizes.s12,
              child: Visibility(
                visible: widget.status != 'offline' && !_hasError,
                child: IconButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => CctvPlayerFullScreen(
                          streamUrl: widget.streamUrl,
                          isEmbed: widget.isEmbed,
                          autoPlay: widget.autoPlay,
                          title: widget.title,
                          isCCtv: widget.isCCtv,
                          name: widget.name,
                          description: widget.description,
                          status: widget.status,
                        ),
                      ),
                    );
                  },
                  icon: Icon(Icons.fullscreen),
                ),
              ),
            ),
          ],
        ),
        _buildInfoContainer(),
      ],
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
              autoFullScreen: false,
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

  Widget _buildTitleContainer() {
    // Get screen dimensions
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    final isSmallScreen = screenHeight < 700 || screenWidth < 380;
    final isUnfolded = screenWidth > 600; // Threshold for unfolded mode
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
          Text(
            widget.title ?? '',
            style: Get.textTheme.bodySmall!.copyWith(
              fontWeight: FontWeight.w600,
              fontSize: isUnfolded ? 12 : 14,
              color: AppColors.whiteColor,
            ),
          ),
          SizedBox(height: Sizes.s4),
        ],
      ),
    );
  }

  Widget _buildInfoContainer() {
    // Get screen dimensions
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    final isSmallScreen = screenHeight < 700 || screenWidth < 380;
    final isUnfolded = screenWidth > 600; // Threshold for unfolded mode
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
                fontSize: isUnfolded ? 14 : (isSmallScreen ? 10 : 14),
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
                fontSize: isUnfolded ? 12 : (isSmallScreen ? 10 : 11),
                color: AppColors.whiteColor,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

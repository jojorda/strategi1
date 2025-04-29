import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:get/get.dart';
import 'package:strategi_hub_app/components/loader.dart';
import 'package:webview_flutter/webview_flutter.dart';

class SSOLoginPage extends StatefulWidget {
  static const routeName = '/ssologin';
  const SSOLoginPage({super.key});

  @override
  State<SSOLoginPage> createState() => _SSOLoginPageState();
}

class _SSOLoginPageState extends State<SSOLoginPage> {
  late final WebViewController _controller;
  bool _isLoading = false;

  @override
  void initState() {
    super.initState();
    final hubnetUrl = dotenv.env['HUBNET_URL'] ?? '';
    final String redirectUri = dotenv.env['STRATEGI_API'] ?? '';
    final String hubnetClientId = dotenv.env['HUBNET_CLIENT_ID'] ?? '';
    final String ssoUrl =
        "$hubnetUrl/sso/oauth/authorize?response_type=code&redirect_uri=$redirectUri/api/oauth/callback/hubnet&client_id=$hubnetClientId";

    _controller = WebViewController()
      ..setJavaScriptMode(JavaScriptMode.unrestricted)
      ..setNavigationDelegate(
        NavigationDelegate(
          onProgress: (int progress) {
            if (progress == 100) {
              setState(() {
                _isLoading = false;
              });
            } else {
              setState(() {
                _isLoading = true;
              });
            }
          },
          onPageStarted: (String url) {
            if (url.startsWith(redirectUri)) {
              _handleRedirect(url);
            }
          },
        ),
      )
      ..loadRequest(Uri.parse(ssoUrl));
  }

  Future<void> _handleRedirect(String url) async {
    Uri uri = Uri.parse(url);
    String? jwt = uri.queryParameters['jwt'];
    String? user = uri.queryParameters['user'];
    String? fullname = uri.queryParameters['fullname'];
    if (jwt != null) {
      await _controller.clearLocalStorage();
      await _controller.clearCache();
      Get.back(result: {"jwt": jwt, "user": user, "fullname": fullname});
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: SizedBox.shrink(),
        centerTitle: true,
        title: Text("SSO Login"),
        backgroundColor: Get.theme.colorScheme.secondary,
      ),
      body: Stack(
        children: [
          WebViewWidget(controller: _controller),
          Visibility(
            visible: _isLoading,
            child: Center(
              child: BouncingLoader(),
            ),
          ),
        ],
      ),
    );
  }
}

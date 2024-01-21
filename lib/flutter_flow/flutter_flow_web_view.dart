import 'package:flutter/material.dart';
import 'package:webview_windows/webview_windows.dart';

class CustomWebView extends StatefulWidget {
  final String url;

  const CustomWebView({Key? key, required this.url}) : super(key: key);

  @override
  _CustomWebViewState createState() => _CustomWebViewState();
}

class _CustomWebViewState extends State<CustomWebView> {
  final _controller = WebviewController();

  @override
  void initState() {
    super.initState();
    _initWebView();
  }

Future<void> _initWebView() async {
  await _controller.initialize();
  await _controller.loadStringContent(widget.url);
}
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Webview(
        _controller,
        permissionRequested: _onPermissionRequested,
      ),
    );
  }

Future<WebviewPermissionDecision> _onPermissionRequested(
    String url, WebviewPermissionKind kind, bool isUserInitiated) async {
  return WebviewPermissionDecision.allow;
}
}
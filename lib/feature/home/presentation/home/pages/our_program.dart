import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class OurProgramPage extends StatefulWidget {
  const OurProgramPage({super.key});

  @override
  State<OurProgramPage> createState() => _OurProgramPageState();
}

class _OurProgramPageState extends State<OurProgramPage> {
  late final WebViewController _controller;
  double _progress = 0.0;

  @override
  void initState() {
    super.initState();
    _controller =
        WebViewController()
          ..setJavaScriptMode(JavaScriptMode.unrestricted)
          ..setBackgroundColor(Colors.white)
          ..enableZoom(false)
          ..setNavigationDelegate(
            NavigationDelegate(
              onProgress: (progress) {
                setState(() => _progress = progress / 100);
              },
              onNavigationRequest: (NavigationRequest request) {
                return NavigationDecision.navigate;
              },
            ),
          )
          ..loadRequest(
            Uri.parse("https://www.echo-harmony.com/Home/OurProgram"),
          );
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        RefreshIndicator(
          onRefresh: () async {
            await _controller.reload();
          },
          child: WebViewWidget(controller: _controller),
        ),
        if (_progress < 1)
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: LinearProgressIndicator(value: _progress),
          ),
      ],
    );
  }
}

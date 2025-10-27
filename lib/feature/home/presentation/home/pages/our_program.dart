import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:webview_flutter/webview_flutter.dart';

import '../../../../../core/core.dart';

class OurProgramPage extends StatefulWidget {
  final String htmlContent;
  final String title;

  const OurProgramPage({
    super.key,
    required this.htmlContent,
    required this.title,
  });

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
          );
    _loadLocalHtml();
  }

  Future<void> _loadLocalHtml() async {
    String html = await rootBundle.loadString(widget.htmlContent);
    _controller.loadHtmlString(html);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          Text(widget.title, style: AppTextStyle.style28B),
          Expanded(
            child: Stack(
              fit: StackFit.expand,
              children: [
                RefreshIndicator(
                  onRefresh: () async {
                    await _controller.reload();
                  },
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 15.0,
                      vertical: 50,
                    ),
                    child: WebViewWidget(controller: _controller),
                  ),
                ),
                if (_progress < 1)
                  Positioned(
                    top: 0,
                    left: 0,
                    right: 0,
                    child: LinearProgressIndicator(value: _progress),
                  ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

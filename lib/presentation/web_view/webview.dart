
import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';


class EpisodeWebview extends StatelessWidget {
  final String url;
  const EpisodeWebview({super.key, required this.url});

  @override
  Widget build(BuildContext context) {
    final controller = WebViewController()..loadRequest(Uri.parse(url));
    return Scaffold(
      appBar: AppBar(
        title: const Text('Episode'),
      ),
      body: WebViewWidget(controller: controller),
    );
  }
}
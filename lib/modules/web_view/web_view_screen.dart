import 'package:flutter/material.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';

class WebViewScreen extends StatefulWidget {
  WebViewScreen({super.key, required this.url});
  final String url;

  @override
  State<WebViewScreen> createState() => _WebViewScreenState();
}

class _WebViewScreenState extends State<WebViewScreen> {
  double _progress=0;

  late InAppWebViewController inAppWebViewController;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Stack(
        children: [
          InAppWebView(
            initialUrlRequest: URLRequest(
              url: Uri.parse(widget.url),
            ),
            onWebViewCreated: (InAppWebViewController controller){
              inAppWebViewController=controller;
            },
            onProgressChanged: (InAppWebViewController controller,int progress){
              setState(() {
                _progress=progress/100;
              });
            },
          ),
          _progress <1 ? LinearProgressIndicator(
            value: _progress,
          ):const SizedBox()
        ],
      ),
    );
  }
}

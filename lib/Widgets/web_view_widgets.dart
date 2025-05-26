import 'package:flutter/material.dart';
import 'package:news_app/Models/articla_model.dart';
import 'package:webview_flutter/webview_flutter.dart';

class WebViewWidgets extends StatefulWidget {
  final ArticlaModel artical;
  const WebViewWidgets({super.key, required this.artical});
  @override
  State<WebViewWidgets> createState() => _WebViewWidgetsState();
}

class _WebViewWidgetsState extends State<WebViewWidgets> {
  late final WebViewController controller;
  @override
  void initState() {
    super.initState();
    controller = WebViewController()
      ..setJavaScriptMode(JavaScriptMode.unrestricted)
      ..loadRequest(Uri.parse(widget.artical.url));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: 
      WebViewWidget(controller: controller
         
      ),
    );

  }
}

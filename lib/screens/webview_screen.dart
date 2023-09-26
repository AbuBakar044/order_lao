import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:webview_flutter/webview_flutter.dart';

class WebViewScreen extends StatefulWidget {
  const WebViewScreen({super.key});

  @override
  State<WebViewScreen> createState() => _WebViewScreenState();
}

class _WebViewScreenState extends State<WebViewScreen> {
  String url = 'https://en.savefrom.net/391GA/';
  var controller = WebViewController();
  @override
  void initState() {
    initWebView();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: WebViewWidget(controller: controller),
      ),
    );
  }

  Future<void> initWebView() async {
    controller = WebViewController()
      ..setJavaScriptMode(JavaScriptMode.unrestricted)
      ..loadRequest(Uri.parse(url))
      ..setNavigationDelegate(NavigationDelegate(
        onPageStarted: (url) {
          controller.runJavaScript('''
                                    document.getElementById('header').style.display='none';
                                    ''');
        },
      ));

    if (await controller.canGoBack()) {
      controller.goBack();
    }

    if (await controller.canGoForward()) {
      controller.goForward();
    }
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';

class webView extends StatelessWidget {

  final String enlace;
  final String titulo;

  webView({
    this.titulo,
    this.enlace,
  });

  @override
  Widget build(BuildContext context) {
    return WebviewScaffold(
      appBar: AppBar(
        title: Text(titulo),
      ),
      url: enlace,
      withJavascript: true,
    );
  }
}

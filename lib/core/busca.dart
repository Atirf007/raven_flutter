import 'package:flutter/material.dart';
import '../screens/webview_page.dart';

class Buscador {
  static Future<void> pesquisar({
    required BuildContext context,
    required String texto,
    required TextEditingController controlador,
  }) async {
    String entrada = texto.trim();
    if (entrada.isEmpty) return;

    Uri uri;
    if (entrada.startsWith('http://') || entrada.startsWith('https://')) {
      uri = Uri.parse(entrada);
    } else if (entrada.contains('.') && !entrada.contains(' ')) {
      uri = Uri.parse('https://$entrada');
    } else {
      uri = Uri.parse('https://duckduckgo.com/?q=${Uri.encodeComponent(entrada)}');
    }

    controlador.clear();

    if (!context.mounted) return;
    Navigator.push(
      context,
      MaterialPageRoute(builder: (_) => WebViewPage(url: uri.toString())),
    );
  }
}
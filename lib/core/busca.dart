import 'package:flutter/material.dart';
import '../screens/webview_screen.dart';

class Buscador {

  static String mecanismoAtual = 'DuckDuckGo';

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
      
      String urlBase;
      switch (mecanismoAtual) {
        case 'Google':
          urlBase = 'https://www.google.com/search?q=';
          break;
        case 'Bing':
          urlBase = 'https://www.bing.com/search?q=';
          break;
        default:
          urlBase = 'https://duckduckgo.com/?q=';
      }
      uri = Uri.parse('$urlBase${Uri.encodeComponent(entrada)}');
    }

    controlador.clear();

    if (!context.mounted) return;
    Navigator.push(
      context,
      MaterialPageRoute(builder: (_) => WebViewPage(url: uri.toString())),
    );
  }

  // 3. DIÁLOGO REUTILIZÁVEL (Pode ser chamado na Home ou nas Configurações)
  static void exibirSeletor(BuildContext context, VoidCallback aoAtualizar) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          backgroundColor: Colors.grey[900],
          title: const Text(
            "Escolha o Buscador",
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
          content: Column(
            mainAxisSize: MainAxisSize.min, // Ocupa apenas o espaço necessário
            children: [
              _itemBuscador(context, 'DuckDuckGo', '🦆 DuckDuckGo', aoAtualizar),
              _itemBuscador(context, 'Google', '🔍 Google', aoAtualizar),
              _itemBuscador(context, 'Bing', '🎯 Bing', aoAtualizar),
            ],
          ),
        );
      },
    );
  }

  // Widget auxiliar interno para criar as linhas de opção
  static Widget _itemBuscador(BuildContext context, String valor, String nome, VoidCallback aoAtualizar) {
    bool selecionado = mecanismoAtual == valor;
    return ListTile(
      title: Text(nome, style: const TextStyle(color: Colors.white)),
      trailing: selecionado ? const Icon(Icons.check, color: Colors.purpleAccent) : null,
      onTap: () {
        mecanismoAtual = valor; // Altera o buscador estático
        aoAtualizar();          // Dispara o setState da tela que chamou
        Navigator.pop(context); // Fecha o AlertDialog
      },
    );
  }
}
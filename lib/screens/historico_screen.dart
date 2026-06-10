// lib/screens/historico_screen.dart

import 'package:flutter/material.dart';
import '../core/historico.dart'; // Importa a lógica do histórico
import 'webview_screen.dart';   // Importa para reabrir a página ao clicar

class HistoricPage extends StatefulWidget {
  const HistoricPage({super.key});

  @override
  State<HistoricPage> createState() => _HistoricPageState();
}

class _HistoricPageState extends State<HistoricPage> {
  
  // Função auxiliar para extrair apenas o domínio (ex: google.com) para a API de ícones
  String _extrairDominio(String url) {
    try {
      Uri uri = Uri.parse(url);
      return uri.host;
    } catch (e) {
      return url;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: const Text("Histórico", style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.black,
        elevation: 0,
        iconTheme: const IconThemeData(color: Colors.white),
        actions: [
          // Só mostra o botão de apagar tudo se houver itens no histórico
          if (HistoricoManager.listaHistorico.isNotEmpty)
            IconButton(
              icon: const Icon(Icons.delete_sweep, color: Colors.deepPurple),
              onPressed: () {
                setState(() {
                  HistoricoManager.limparTudo();
                });
              },
            )
        ],
      ),
      body: HistoricoManager.listaHistorico.isEmpty
          ? const Center(
              child: Text(
                "Nenhum histórico de navegação",
                style: TextStyle(color: Colors.grey, fontSize: 16),
              ),
            )
          : ListView.builder(
              itemCount: HistoricoManager.listaHistorico.length,
              itemBuilder: (context, index) {
                final item = HistoricoManager.listaHistorico[index];
                
                return ListTile(
                  // Captura o logotipo (Favicon) dinamicamente usando a API do Google
                  leading: Image.network(
                    'https://www.google.com/s2/favicons?sz=64&domain=${_extrairDominio(item.url)}',
                    width: 24,
                    height: 24,
                    // Se o site não tiver ícone ou falhar a rede, mostra o ícone genérico roxo do Raven
                    errorBuilder: (context, error, stackTrace) {
                      return const Icon(Icons.public, color: Colors.deepPurple, size: 24);
                    },
                  ),
                  title: Text(
                    item.titulo,
                    style: const TextStyle(color: Colors.white, fontWeight: FontWeight.w500),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                  subtitle: Text(
                    "${item.url} • ${item.hora}",
                    style: const TextStyle(color: Colors.grey, fontSize: 12),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                  trailing: IconButton(
                    icon: const Icon(Icons.close, color: Colors.grey, size: 20),
                    onPressed: () {
                      // Remove o item selecionado e atualiza o ecrã
                      setState(() {
                        HistoricoManager.remover(index);
                      });
                    },
                  ),
                  onTap: () {
                    // Ao clicar no item do histórico, o Raven navega de volta para esse site!
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) => WebViewPage(url: item.url),
                      ),
                    );
                  },
                );
              },
            ),
    );
  }
}
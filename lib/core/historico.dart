// lib/core/historico.dart

class ItemHistorico {
  final String titulo;
  final String url;
  final String hora;

  ItemHistorico({
    required this.titulo,
    required this.url,
    required this.hora,
  });
}

class HistoricoManager {
  
  static List<ItemHistorico> listaHistorico = [];

  // Adiciona um site à lista
  static void adicionar(String titulo, String url) {
    final agora = DateTime.now();
    final horaFormatada = "${agora.hour.toString().padLeft(2, '0')}:${agora.minute.toString().padLeft(2, '0')}";

    if (listaHistorico.isNotEmpty && listaHistorico.first.url == url) {
      return;
    }
    listaHistorico.insert(
      0,
      ItemHistorico(
        titulo: titulo.isEmpty ? url : titulo,
        url: url,
        hora: horaFormatada,
      ),
    );
  }

  // Remove um item específico pelo index
  static void remover(int index) {
    listaHistorico.removeAt(index);
  }

  // Limpa todo o histórico
  static void limparTudo() {
    listaHistorico.clear();
  }
}
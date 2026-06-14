import 'dart:convert'; // Necessário para transformar os dados em JSON
import 'package:shared_preferences/shared_preferences.dart'; // O pacote de salvar
import '../models/item_historico.dart';

class HistoricoService {
  static List<ItemHistorico> listaHistorico = [];

  // --- NOVA FUNÇÃO: CARREGA O HISTÓRICO SALVO QUANDO O APP ABRE ---
  static Future<void> carregarHistorico() async {
    final prefs = await SharedPreferences.getInstance();
    final List<String>? historicoJson = prefs.getStringList('raven_historico');
    
    if (historicoJson != null) {
      // Pega os textos salvos, decodifica do JSON e recria a lista
      listaHistorico = historicoJson
          .map((item) => ItemHistorico.fromJson(jsonDecode(item)))
          .toList();
    }
  }

  // --- NOVA FUNÇÃO: SALVA NO CELULAR ---
  static Future<void> _salvarNoCelular() async {
    final prefs = await SharedPreferences.getInstance();
    // Transforma a lista de objetos em uma lista de strings (JSON)
    final List<String> historicoJson = listaHistorico
        .map((item) => jsonEncode(item.toJson()))
        .toList();
    await prefs.setStringList('raven_historico', historicoJson);
  }

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
    
    _salvarNoCelular(); // <--- SALVA AUTOMATICAMENTE
  }

  // Remove um item específico pelo index
  static void remover(int index) {
    listaHistorico.removeAt(index);
    _salvarNoCelular(); // <--- SALVA AUTOMATICAMENTE
  }

  // Limpa todo o histórico
  static void limparTudo() {
    listaHistorico.clear();
    _salvarNoCelular(); // <--- SALVA AUTOMATICAMENTE
  }
}

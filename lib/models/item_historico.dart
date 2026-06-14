class ItemHistorico {
  final String titulo;
  final String url;
  final String hora;

  ItemHistorico({
    required this.titulo,
    required this.url,
    required this.hora,
  });

  // Transforma o objeto em um "dicionário" (JSON) para podermos salvar
  Map<String, dynamic> toJson() => {
    'titulo': titulo,
    'url': url,
    'hora': hora,
  };

  // Recria o objeto a partir do JSON quando o app reabre
  factory ItemHistorico.fromJson(Map<String, dynamic> json) => ItemHistorico(
    titulo: json['titulo'],
    url: json['url'],
    hora: json['hora'],
  );
}

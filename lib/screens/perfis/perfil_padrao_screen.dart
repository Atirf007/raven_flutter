import 'package:flutter/material.dart';

class PerfilPadrao extends StatefulWidget {
  const PerfilPadrao({super.key});

  @override
  State<PerfilPadrao> createState() => _PerfilPadraoState();
}

class _PerfilPadraoState extends State<PerfilPadrao> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black, // Fundo escuro
      body: Center(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 24.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: Colors.purple,
                  shape: BoxShape.circle,
                ),
                child: Icon(Icons.public, size: 50, color: Colors.white),
              ),
              SizedBox(height: 24),

              // Título
              Text(
                "Modo Padrão",
                style: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              SizedBox(height: 16),

              // Descrição
              Text(
                "O equilíbrio perfeito entre segurança e performance, ideal para a sua navegação de rotina.",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 16, color: Colors.grey),
              ),
              SizedBox(height: 40),

              // Tópicos com checkmarks
              _buildTopico(
                Icons.security,
                "Bloqueia rastreadores comuns de forma eficiente.",
              ),
              _buildTopico(
                Icons.speed,
                "Mantém o carregamento das páginas rápido, sem comprometer a velocidade.",
              ),
              _buildTopico(
                Icons.thumb_up,
                "Recomendado para o uso diário na internet.",
              ),
            ],
          ),
        ),
      ),
    );
  }

  // Função para criar a lista de tópicos bonitinha
  Widget _buildTopico(IconData icone, String texto) {
    return Padding(
      padding: EdgeInsets.only(bottom: 16.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(icone, color: Colors.purpleAccent, size: 22),
          SizedBox(width: 12),
          Expanded(
            child: Text(
              texto,
              style: TextStyle(
                color: Colors.white70,
                fontSize: 15,
                height: 1.4,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

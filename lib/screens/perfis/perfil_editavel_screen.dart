import 'package:flutter/material.dart';

class PerfilEditavel extends StatefulWidget {
  const PerfilEditavel({super.key});

  @override
  State<PerfilEditavel> createState() => _PerfilEditavelState();
}

class _PerfilEditavelState extends State<PerfilEditavel> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
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
                child: Icon(Icons.edit_note, size: 50, color: Colors.white),
              ),
              SizedBox(height: 24),

              Text(
                "Perfil Editável",
                style: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              SizedBox(height: 16),

              Text(
                "Controle manual absoluto para usuários avançados.",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 16, color: Colors.grey),
              ),
              SizedBox(height: 40),

              _buildTopico(
                Icons.tune,
                "Acesse o menu de edição e ajuste bloqueios manualmente.",
              ),
              _buildTopico(
                Icons.router,
                "Oferece opções de roteamento de rede.",
              ),
              _buildTopico(
                Icons.flag,
                "Possibilita a manipulação de flags de segurança do sistema.",
              ),
            ],
          ),
        ),
      ),
    );
  }

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

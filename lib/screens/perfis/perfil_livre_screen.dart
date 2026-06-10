import 'package:flutter/material.dart';

class PerfilLivre extends StatefulWidget {
  const PerfilLivre({super.key});

  @override
  State<PerfilLivre> createState() => _PerfilLivreState();
}

class _PerfilLivreState extends State<PerfilLivre> {
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
                child: Icon(
                  Icons.visibility,
                  size: 50,
                  color: Colors.white,
                ),
              ),
              SizedBox(height: 24),

              Text(
                "Modo Livre",
                style: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              SizedBox(height: 16),

              Text(
                "Foco total em performance e velocidade, sem barreiras de segurança.",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 16, color: Colors.grey),
              ),
              SizedBox(height: 40),

              _buildTopico(
                Icons.shield_outlined,
                "Reduz as camadas ativas de proteção do navegador.",
              ),
              _buildTopico(
                Icons.rocket_launch,
                "Prioriza a velocidade máxima de conexão.",
              ),
              _buildTopico(
                Icons.warning_amber_rounded,
                "Recomendado APENAS para sites que você confia plenamente.",
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

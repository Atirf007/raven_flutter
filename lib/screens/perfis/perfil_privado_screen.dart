import 'package:flutter/material.dart';

class PerfilPrivado extends StatefulWidget {
  const PerfilPrivado({super.key});

  @override
  State<PerfilPrivado> createState() => _PerfilPrivadoState();
}

class _PerfilPrivadoState extends State<PerfilPrivado> {
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
                child: Icon(Icons.lock, size: 50, color: Colors.white),
              ),
              SizedBox(height: 24),

              Text(
                "Modo Privado",
                style: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              SizedBox(height: 16),

              Text(
                "Segurança máxima focada em anonimato e privacidade na rede.",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 16, color: Colors.grey),
              ),
              SizedBox(height: 40),

              _buildTopico(
                Icons.block,
                "Aplica bloqueio completo de trackers e anti-fingerprinting.",
              ),
              _buildTopico(
                Icons.vpn_key,
                "Garante o isolamento total da sua sessão.",
              ),
              _buildTopico(
                Icons.delete_sweep,
                "Elimina cookies e cache automaticamente ao final do uso.",
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

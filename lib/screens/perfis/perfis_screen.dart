import 'package:flutter/material.dart';
import 'perfil_padrao.dart';
import 'perfil_livre.dart';
import 'perfil_privado.dart';
import 'perfil_editavel.dart';

class Perfis extends StatefulWidget {
  const Perfis({super.key});

  @override
  State<Perfis> createState() => _PerfisState();
}

class _PerfisState extends State<Perfis> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black, //[cite: 7]
      appBar: AppBar(
        backgroundColor: Colors.black,
        elevation: 0,
        iconTheme: const IconThemeData(color: Colors.white),
      ),
      body: PageView(
        children: [
          PerfilPadrao(),
          PerfilLivre(),
          PerfilPrivado(),
          PerfilEditavel(),
        ],
      ),
    );
  }
}

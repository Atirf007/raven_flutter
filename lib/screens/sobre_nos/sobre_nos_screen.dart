import 'package:flutter/material.dart';
import 'membro_pedro_screen.dart';
import 'membro_gustavo_screen.dart';
import 'membro_ciro_screen.dart';
import 'membro_gabriel_screen.dart';

class SobreNos extends StatefulWidget {
  const SobreNos({super.key});

  @override
  State<SobreNos> createState() => _SobreNosState();
}

class _SobreNosState extends State<SobreNos> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: const Text(
          "Quem Somos", 
          style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        backgroundColor: Colors.black,
        elevation: 0,
        iconTheme: const IconThemeData(color: Colors.white),
      ),
      body: PageView(
        children: [
          MembroPedro(),
          MembroGustavo(),
          MembroCiro(),
          MembroGabriel(),
        ],
      ),
    );
  }
}
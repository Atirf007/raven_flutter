import 'package:flutter/material.dart';

class Sobre extends StatelessWidget {
  const Sobre({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(child: Center(
        child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 35),
              Image.asset('assets/images/logoRaven.png', width: 120, height: 120),
              SizedBox(height: 35),
              Text("Raven Browser", style: TextStyle(fontSize: 40, color: Colors.white)),
              SizedBox(height: 50),
              Text('O Raven Browser é um navegador de internet focado em privacidade e segurança, porém não deixando'
              'que esses aspectos impeçam o usuário de ter uma experiência prática e conveniente através de suas ferramentas.'
              'de fácil utilização',
              textAlign: TextAlign.justify,
              style: TextStyle(fontSize: 15, color: Colors.white)),
              SizedBox(height: 50),
              Text("Funcionalidades: ", style: TextStyle(fontSize: 20, color: Colors.white)),
              SizedBox(height: 15),
              Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                  Text('\u2022 Perfis para diferentes necessidades de navegação', style: TextStyle(fontSize: 15, color: Colors.white)),
                  Text('\u2022 VPN com alteração de alcance', style: TextStyle(fontSize: 15, color: Colors.white)),
                  Text('\u2022 Extensões de privacidade', style: TextStyle(fontSize: 15, color: Colors.white)),
                  Text('\u2022 Ferramentas anti-fingerprinting', style: TextStyle(fontSize: 15, color: Colors.white)),
                ])
              ]),
              SizedBox(height: 50),
              Text("Também disponível para: ", style: TextStyle(fontSize: 20, color: Colors.white)),
              SizedBox(height: 15),
              Row(
              children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                Text('\u2022 Windows', style: TextStyle(fontSize: 15, color: Colors.white)),
                Text('\u2022 Linux', style: TextStyle(fontSize: 15, color: Colors.white)),
              ],)])
            ]
            )
        )
      ))
    );
  }
}

        
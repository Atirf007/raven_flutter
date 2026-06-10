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
              Text('O Raven Browser é um navegador de internet focado em privacidade, segurança e praticidade.' 
              'dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea' 
              'commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla'
              'pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim' 
              'id est laborum. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et',
              textAlign: TextAlign.justify,
              style: TextStyle(fontSize: 15, color: Colors.white)),
              SizedBox(height: 50),
              Text("Features: ", style: TextStyle(fontSize: 20, color: Colors.white)),
              SizedBox(height: 15),
              Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                  Text('\u2022 Perfis', style: TextStyle(fontSize: 15, color: Colors.white)),
                  Text('\u2022 VPN', style: TextStyle(fontSize: 15, color: Colors.white)),
                  Text('\u2022 Extensões', style: TextStyle(fontSize: 15, color: Colors.white)),
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

        
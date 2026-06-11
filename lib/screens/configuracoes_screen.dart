import 'package:flutter/material.dart';
import 'package:flutter_application_mobiletelas/screens/cadastro.dart';
import 'package:flutter_application_mobiletelas/screens/sobre.dart';
import 'package:flutter_application_mobiletelas/screens/sobre_nos/sobre_nos_screen.dart';
import '../core/busca.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({super.key});

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text("Configurações", style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.black,
        elevation: 0,
        iconTheme: IconThemeData(color: Colors.white),
      ),
      body: ListView(
        children: [
          ListTile(
            leading: Icon(Icons.person, color: Colors.deepPurple),
            title: Text("Minha Conta", style: TextStyle(color: Colors.white)),
            onTap: () {
               Navigator.pop(context);
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Cadastro()),
              );
            },
          ),
          ListTile(
            leading: Icon(Icons.search, color: Colors.deepPurple),
            title: Text("Mecanismo de Busca", style: TextStyle(color: Colors.white)),
            onTap: () {
              Buscador.exibirSeletor(context, () {
                setState(() {});
              });
            },
          ),
          ListTile(
            leading: Icon(Icons.shield, color: Colors.deepPurple),
            title: Text("Privacidade e Segurança", style: TextStyle(color: Colors.white)),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(Icons.palette, color: Colors.deepPurple),
            title: Text("Aparência", style: TextStyle(color: Colors.white)),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(Icons.notifications, color: Colors.deepPurple),
            title: Text("Notificações", style: TextStyle(color: Colors.white)),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(Icons.info, color: Colors.deepPurple),
            title: Text("Sobre o Raven", style: TextStyle(color: Colors.white)),
            onTap: () {
              Navigator.pop(context);
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Sobre()),
              );
            },
            
          ),
           ListTile(
            leading: Icon(Icons.group, color: Colors.deepPurple),
            title: Text("Sobre nós", style: TextStyle(color: Colors.white)),
            onTap: () {
              Navigator.pop(context);
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => SobreNos()),
              );
            },
            
          ),
        ],
      ),
    );
  }
}
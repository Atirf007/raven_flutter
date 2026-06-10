import 'package:flutter/material.dart';

class HistoricPage extends StatefulWidget {
  const HistoricPage({super.key});

  @override
  State<HistoricPage> createState() => _HistoricPageState();
}

class _HistoricPageState extends State<HistoricPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text("Histórico", style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.black,
        elevation: 0,
        iconTheme: IconThemeData(color: Colors.white),
        actions: [
          IconButton(
            icon: Icon(Icons.delete_sweep, color: Colors.deepPurple),
            onPressed: () {},
          )
        ],
      ),
      body: ListView(
        children: [
          ListTile(
            leading: Image.asset("images/instagramIcon.png", width: 24, height: 24),
            title: Text("(3) Instagram ∙ Mensagens", style: TextStyle(color: Colors.white)),
            subtitle: Text("https://www.instagram.com/direct/t/17845485503978448 • 14:32", style: TextStyle(color: Colors.grey)),
            trailing: Icon(Icons.close, color: Colors.grey, size: 20),
            onTap: () {},
          ),
          ListTile(
            leading: Image.asset("images/googleIcon.png", width: 24, height: 24),
            title: Text("como centralizar uma div - Pesquisa Google", style: TextStyle(color: Colors.white)),
            subtitle: Text("https://www.google.com/search?q=como+centralizar+uma+div • 13:15", style: TextStyle(color: Colors.grey)),
            trailing: Icon(Icons.close, color: Colors.grey, size: 20),
            onTap: () {},
          ),
          ListTile(
            leading: Image.asset("images/youtubeIcon.png", width: 24, height: 24),
            title: Text("como centralizar uma div", style: TextStyle(color: Colors.white)),
            subtitle: Text("https://www.youtube.com/watch?v=jtb4YEnhC34 • Ontem", style: TextStyle(color: Colors.grey)),
            trailing: Icon(Icons.close, color: Colors.grey, size: 20),
            onTap: () {},
          ),
          ListTile(
            leading: Image.asset("images/logoRaven.png", width: 24, height: 24),
            title: Text("Raven Browser | Privacidade", style: TextStyle(color: Colors.white)),
            subtitle: Text("raven://privacy-settings • Ontem", style: TextStyle(color: Colors.grey)),
            trailing: Icon(Icons.close, color: Colors.grey, size: 20),
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
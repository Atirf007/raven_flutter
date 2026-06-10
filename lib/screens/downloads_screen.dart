import 'package:flutter/material.dart';

class DownloadsPage extends StatefulWidget {
  const DownloadsPage({super.key});

  @override
  State<DownloadsPage> createState() => _DownloadsPageState();
}

class _DownloadsPageState extends State<DownloadsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text("Downloads", style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.black,
        elevation: 0,
        iconTheme: IconThemeData(color: Colors.white),
        actions: [
          IconButton(
            icon: Icon(Icons.clear_all, color: Colors.deepPurple),
            onPressed: () {},
          )
        ],
      ),
      body: ListView(
        children: [
          ListTile(
            leading: Icon(Icons.picture_as_pdf, color: Colors.deepPurple, size: 30),
            title: Text("relatorio_privacidade.pdf", style: TextStyle(color: Colors.white)),
            subtitle: Text("2.4 MB • Hoje, 14:30", style: TextStyle(color: Colors.grey)),
            trailing: Icon(Icons.more_vert, color: Colors.grey, size: 20),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(Icons.image, color: Colors.deepPurple, size: 30),
            title: Text("wallpaper_raven.png", style: TextStyle(color: Colors.white)),
            subtitle: Text("5.1 MB • Ontem", style: TextStyle(color: Colors.grey)),
            trailing: Icon(Icons.more_vert, color: Colors.grey, size: 20),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(Icons.android, color: Colors.deepPurple, size: 30),
            title: Text("raven_browser_beta.apk", style: TextStyle(color: Colors.white)),
            subtitle: Text("45.2 MB • 25 de Abr", style: TextStyle(color: Colors.grey)),
            trailing: Icon(Icons.more_vert, color: Colors.grey, size: 20),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(Icons.folder_zip, color: Colors.deepPurple, size: 30),
            title: Text("pokemon_firered.zip", style: TextStyle(color: Colors.white)),
            subtitle: Text("3.4 MB • 20 de Abr", style: TextStyle(color: Colors.grey)),
            trailing: Icon(Icons.more_vert, color: Colors.grey, size: 20),
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
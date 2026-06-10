import 'package:flutter/material.dart';
import '../screens/downloads_page.dart';
import '../screens/vpn_page.dart';
import '../screens/perfis/perfis.dart';
import '../screens/settings_page.dart';
import '../screens/historic_page.dart';

class MenuLateral extends StatelessWidget {
  const MenuLateral({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.grey[900],
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
            decoration: BoxDecoration(color: Colors.purple),
            child: Text(
              'Versão de testes',
              style: TextStyle(color: Colors.white, fontSize: 18),
            ),
          ),
          ListTile(
            leading: Icon(Icons.people, color: Colors.white),
            title: Text('Perfis', style: TextStyle(color: Colors.white)),
            onTap: () {
              Navigator.pop(context);
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Perfis()),
              );
            },
          ),
          ListTile(
            leading: Icon(Icons.history, color: Colors.white),
            title: Text('Histórico', style: TextStyle(color: Colors.white)),
             onTap: () {
              Navigator.pop(context); 
              Navigator.push(          
                context,
                MaterialPageRoute(builder: (context) => HistoricPage()),
              );
            },
          ),
          ListTile(
            leading: Icon(Icons.download, color: Colors.white),
            title: Text('Downloads', style: TextStyle(color: Colors.white)),
            onTap: () {
              Navigator.pop(context); 
              Navigator.push(          
                context,
                MaterialPageRoute(builder: (context) => DownloadsPage()),
              );
            },
          ),
          ListTile(
            leading: Icon(Icons.settings, color: Colors.white),
            title: Text('Configurações', style: TextStyle(color: Colors.white)),
            onTap: () {
              Navigator.pop(context); 
              Navigator.push(          
                context,
                MaterialPageRoute(builder: (context) => SettingsPage()),
              );
            },
          ),
          ListTile(
            leading: Icon(Icons.vpn_lock, color: Colors.white),
            title: Text('VPN', style: TextStyle(color: Colors.white)),
             onTap: () {
              Navigator.pop(context);
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => VpnPage()),
              );
            }
          ),
        ],
      ),
    );
  }
}
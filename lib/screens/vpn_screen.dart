import 'package:flutter/material.dart';

class VpnPage extends StatefulWidget {
  const VpnPage({super.key});

  @override
  State<VpnPage> createState() => _VpnPageState();
}

class _VpnPageState extends State<VpnPage> {
  bool isConnected = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        elevation: 0,
        iconTheme: IconThemeData(color: Colors.white),
      ),
      body: Center(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 24.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: isConnected ? Colors.deepPurple : Colors.grey,
                  shape: BoxShape.circle,
                ),
                child: Icon(
                  Icons.security,
                  size: 50,
                  color: Colors.white,
                ),
              ),
              SizedBox(height: 24),
              Text(
                isConnected ? "Conexão Ativa" : "Conexão desativada",
                style: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              SizedBox(height: 40),
              Switch(
                value: isConnected,
                activeTrackColor: Colors.deepPurple,
                activeThumbColor: Colors.purpleAccent,
                inactiveThumbColor: Colors.grey,
                onChanged: (bool valor) {
                  setState(() {
                    isConnected = valor;
                  });
                },
              ),
              SizedBox(height: 10),
              Text(
                isConnected ? "VPN ligada" : "VPN desligada",
                style: TextStyle(
                  color: isConnected ? Colors.purpleAccent : Colors.grey,
                  fontWeight: FontWeight.w500,
                ),
              ),
              SizedBox(height: 20),
              
              ExpansionTile(
                iconColor: Colors.purpleAccent,
                collapsedIconColor: Colors.grey,
                title: Text('Localização do Servidor', style: TextStyle(color: Colors.white)),
                children: <Widget>[
                  ListTile(
                    leading: Icon(Icons.location_on, color: Colors.deepPurple),
                    title: Text('Nacional (Brasil)', style: TextStyle(color: Colors.white)),
                    subtitle: Text('Seu tráfego aparece como do Brasil', style: TextStyle(color: Colors.grey)),
                    onTap: () {
                   
                    },
                  ),
               
                  Theme(
                    data: Theme.of(context).copyWith(dividerColor: Colors.transparent), 
                    child: ExpansionTile(
                      iconColor: Colors.purpleAccent,
                      collapsedIconColor: Colors.grey,
                      leading: Icon(Icons.public, color: Colors.deepPurple),
                      title: Text('Global (Mundo Todo)', style: TextStyle(color: Colors.white)),
                      subtitle: Text('Range normal de tráfego mundial', style: TextStyle(color: Colors.grey)),
                      children: <Widget>[
                        ListTile(
                          contentPadding: EdgeInsets.only(left: 72.0, right: 16.0), 
                          title: Text('Estados Unidos', style: TextStyle(color: Colors.white)),
                          onTap: () {
                          
                          },
                        ),
                        ListTile(
                          contentPadding: EdgeInsets.only(left: 72.0, right: 16.0),
                          title: Text('Alemanha', style: TextStyle(color: Colors.white)),
                          onTap: () {
                          
                          },
                        ),
                        ListTile(
                          contentPadding: EdgeInsets.only(left: 72.0, right: 16.0),
                          title: Text('Japão', style: TextStyle(color: Colors.white)),
                          onTap: () {
                          
                          },
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
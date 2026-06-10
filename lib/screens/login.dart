import 'package:flutter/material.dart';
import 'package:flutter_application_mobiletelas/screens/home.dart';
import 'package:flutter_application_mobiletelas/usuario.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  TextEditingController usuarioController = new TextEditingController();
  TextEditingController senhaController= new TextEditingController();
  
  GlobalKey<FormState> loginKey = new GlobalKey<FormState>();
  
  List<Usuario> listaUsuario = [Usuario("admin", "12345678")];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Form(
        key: loginKey,
        child: Center(child: Column(children: [
          SizedBox(height: 200,),
          Icon(Icons.lock, size: 100, color: Colors.white),
          SizedBox(height: 75),
          SizedBox(
              width: 500,
              child: TextFormField(
              controller: usuarioController,
              style: TextStyle(color: Colors.white),
              decoration: InputDecoration(
                labelText: "Usuário",
                labelStyle: TextStyle(color: Colors.white),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
                errorBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.white, width: 1.0),
                  borderRadius: BorderRadius.circular(30),
                ),
                errorStyle: TextStyle(color: Colors.white)
              ),
              validator: (value) {
                if(value!.isEmpty){
                  return ("Preencha o nome de usuário");
                }
                else{
                  return null;
                }
              }
            ),
          ),
          SizedBox(height: 25),
          SizedBox(
            width: 500,
            child: TextFormField(
              controller: senhaController,
              style: TextStyle(color: Colors.white),
              decoration: InputDecoration(
                labelText: "Senha",
                labelStyle: TextStyle(color: Colors.white),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
                errorBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.white, width: 1.0),
                  borderRadius: BorderRadius.circular(30),
                ),
                errorStyle: TextStyle(color: Colors.white)
              ),
              obscureText: true,
              validator: (value){
                if(value!.isEmpty){
                  return ("Preencha a senha");
                }
                else{
                  return null;
                }
              }
            )
          ),
          SizedBox(height: 175),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(50.0),
              ),
              minimumSize: const Size(250, 50),
              backgroundColor: Colors.deepPurple,
            ),
            onPressed: () {
              if (loginKey.currentState!.validate()){
                  if(listaUsuario.any((u) => u.usuario == usuarioController.text && listaUsuario.any((u) => u.senha == senhaController.text))) 
                  {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => const Home()));
                  }
                  else{
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Text('Falha ao realizar o login.'))
                    );
                  }

                  usuarioController.clear();
                  senhaController.clear();

                  setState(() {
                    
                  });
              }
          }, child: Text("Entrar", style: TextStyle(color: Colors.white),))
        ],),),
      )
    );
  }
}
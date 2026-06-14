import 'package:flutter/material.dart';
import '../widgets/menu_lateral_widget.dart';
import '../services/busca_service.dart';
import '../services/historico_service.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int abasAbertas = 67;
  TextEditingController controladorBusca = TextEditingController();

  @override
  void initState() {
    super.initState();
    
    HistoricoService.carregarHistorico().then((_) {
      setState(() {}); 
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      drawer: const MenuLateral(),
      appBar: AppBar(
        backgroundColor: Colors.black,
        elevation: 0,
        iconTheme: const IconThemeData(color: Colors.white),
        actions: [
          Center(
            child: Container(
              margin: const EdgeInsets.only(right: 16),
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.purple, width: 2),
                borderRadius: BorderRadius.circular(8),
              ),
              child: Text(
                '$abasAbertas',
                style: const TextStyle(
                  color: Colors.purple,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/images/logoRaven_round.png', width: 80, height: 80),
            const SizedBox(height: 16),
            const Text(
              'Raven Browser',
              style: TextStyle(
                color: Colors.white,
                fontSize: 28,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 15),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: TextField(
                controller: controladorBusca,
                style: const TextStyle(color: Colors.white),
                decoration: InputDecoration(
                  // ALTERAÇÃO AQUI: Mostra dinamicamente o nome do buscador configurado
                  hintText: 'Pesquisar com ${BuscaService.mecanismoAtual}...',
                  hintStyle: const TextStyle(color: Colors.grey),
                  prefixIcon: const Icon(Icons.search, color: Colors.grey),
                  suffixIcon: IconButton(
                    icon: const Icon(Icons.arrow_forward, color: Colors.grey),
                    onPressed: () {
                      BuscaService.pesquisar(
                        context: context,
                        texto: controladorBusca.text,
                        controlador: controladorBusca,
                      );
                    },
                  ),
                  filled: true,
                  fillColor: Colors.grey[900],
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                    borderSide: const BorderSide(color: Colors.purple),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                    borderSide: const BorderSide(
                      color: Colors.purpleAccent,
                      width: 2,
                    ),
                  ),
                ),
                onSubmitted: (texto) => BuscaService.pesquisar(
                  context: context,
                  texto: texto,
                  controlador: controladorBusca,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'inicio_screen.dart';
import '../models/usuario.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> with SingleTickerProviderStateMixin {
  TextEditingController usuarioController = TextEditingController();
  TextEditingController senhaController = TextEditingController();

  GlobalKey<FormState> loginKey = GlobalKey<FormState>();

  List<Usuario> listaUsuario = [Usuario("admin", "12345678")];

  bool _senhaVisivel = false;

  late AnimationController _animController;
  late Animation<double> _fadeAnim;

  static const Color _roxo = Color(0xFF9B63F3);
  static const Color _roxoEscuro = Color(0xFF6B3DB3);
  static const Color _fundo = Color(0xFF0A0A0F);
  static const Color _superficie = Color(0xFF12121A);
  static const Color _borda = Color(0xFF2A2A3A);
  static const Color _textoCinza = Color(0xFF8888AA);

  @override
  void initState() {
    super.initState();
    _animController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 900),
    );
    _fadeAnim = CurvedAnimation(parent: _animController, curve: Curves.easeOut);
    _animController.forward();
  }

  @override
  void dispose() {
    _animController.dispose();
    usuarioController.dispose();
    senhaController.dispose();
    super.dispose();
  }

  InputDecoration _fieldDecoration(String label, IconData icon) {
    return InputDecoration(
      labelText: label,
      labelStyle: const TextStyle(color: _textoCinza, fontSize: 14),
      prefixIcon: Icon(icon, color: _textoCinza, size: 20),
      filled: true,
      fillColor: _superficie,
      contentPadding: const EdgeInsets.symmetric(horizontal: 20, vertical: 18),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(14),
        borderSide: const BorderSide(color: _borda),
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(14),
        borderSide: const BorderSide(color: _borda),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(14),
        borderSide: const BorderSide(color: _roxo, width: 1.5),
      ),
      errorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(14),
        borderSide: const BorderSide(color: Color(0xFFE05C7A), width: 1.0),
      ),
      focusedErrorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(14),
        borderSide: const BorderSide(color: Color(0xFFE05C7A), width: 1.5),
      ),
      errorStyle: const TextStyle(color: Color(0xFFE05C7A), fontSize: 12),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: _fundo,
      body: FadeTransition(
        opacity: _fadeAnim,
        child: Center(
          child: SingleChildScrollView(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Form(
              key: loginKey,
              child: ConstrainedBox(
                constraints: const BoxConstraints(maxWidth: 420),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    // Logo / ícone
                    Container(
                      width: 80,
                      height: 80,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: _roxo.withOpacity(0.12),
                        shape: BoxShape.circle,
                        border: Border.all(color: _roxo.withOpacity(0.3), width: 1.5),
                      ),
                      child: const Icon(Icons.lock_outline_rounded, size: 38, color: _roxo),
                    ),

                    const SizedBox(height: 28),

                    // Título
                    const Text(
                      'Bem-vindo',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 28,
                        fontWeight: FontWeight.w700,
                        letterSpacing: -0.5,
                      ),
                    ),
                    const SizedBox(height: 6),
                    const Text(
                      'Faça login para continuar',
                      textAlign: TextAlign.center,
                      style: TextStyle(color: _textoCinza, fontSize: 14),
                    ),

                    const SizedBox(height: 40),

                    // Campo usuário
                    TextFormField(
                      controller: usuarioController,
                      style: const TextStyle(color: Colors.white, fontSize: 15),
                      decoration: _fieldDecoration('Usuário', Icons.person_outline_rounded),
                      validator: (value) {
                        if (value!.isEmpty) return 'Preencha o nome de usuário';
                        return null;
                      },
                    ),

                    const SizedBox(height: 16),

                    // Campo senha
                    TextFormField(
                      controller: senhaController,
                      style: const TextStyle(color: Colors.white, fontSize: 15),
                      obscureText: !_senhaVisivel,
                      decoration: _fieldDecoration('Senha', Icons.lock_outline_rounded).copyWith(
                        suffixIcon: IconButton(
                          icon: Icon(
                            _senhaVisivel ? Icons.visibility_off_outlined : Icons.visibility_outlined,
                            color: _textoCinza,
                            size: 20,
                          ),
                          onPressed: () => setState(() => _senhaVisivel = !_senhaVisivel),
                        ),
                      ),
                      validator: (value) {
                        if (value!.isEmpty) return 'Preencha a senha';
                        return null;
                      },
                    ),

                    const SizedBox(height: 32),

                    // Botão entrar
                    SizedBox(
                      height: 54,
                      child: DecoratedBox(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(14),
                          gradient: const LinearGradient(
                            colors: [_roxo, _roxoEscuro],
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                          ),
                          boxShadow: [
                            BoxShadow(
                              color: _roxo.withOpacity(0.35),
                              blurRadius: 20,
                              offset: const Offset(0, 8),
                            ),
                          ],
                        ),
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.transparent,
                            shadowColor: Colors.transparent,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(14),
                            ),
                          ),
                          onPressed: () {
                            if (loginKey.currentState!.validate()) {
                              if (listaUsuario.any((u) =>
                                  u.usuario == usuarioController.text &&
                                  listaUsuario.any((u) => u.senha == senhaController.text))) {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => const Home()),
                                );
                              } else {
                                ScaffoldMessenger.of(context).showSnackBar(
                                  SnackBar(
                                    content: const Text('Usuário ou senha incorretos.'),
                                    backgroundColor: const Color(0xFF1E1E2E),
                                    behavior: SnackBarBehavior.floating,
                                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                                  ),
                                );
                              }

                              usuarioController.clear();
                              senhaController.clear();
                              setState(() {});
                            }
                          },
                          child: const Text(
                            'Entrar',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                              letterSpacing: 0.3,
                            ),
                          ),
                        ),
                      ),
                    ),

                    const SizedBox(height: 40),

                    // Rodapé discreto
                    const Text(
                      'Raven © 2025',
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Color(0xFF44445A), fontSize: 12),
                    ),

                    const SizedBox(height: 24),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

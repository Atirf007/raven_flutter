import 'package:flutter/material.dart';

class MembroCiro extends StatefulWidget {
  const MembroCiro({super.key});

  @override
  State<MembroCiro> createState() => _MembroCiroState();
}

class _MembroCiroState extends State<MembroCiro> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                padding: const EdgeInsets.all(20),
                decoration: const BoxDecoration(
                  color: Colors.purple,
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    image: AssetImage('images/ciro_1x1.jpg'),
                    fit: BoxFit.cover,
                  ),
                ),
                child: const SizedBox(width: 50, height: 50),
              ),
              const SizedBox(height: 24),

              const Text(
                "Ciro",
                style: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              const SizedBox(height: 16),

              const Text(
                "Desenvolvimento Desktop",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 16, color: Colors.grey),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
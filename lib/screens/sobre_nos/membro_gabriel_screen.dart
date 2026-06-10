import 'package:flutter/material.dart';

class MembroGabriel extends StatefulWidget {
  const MembroGabriel({super.key});

  @override
  State<MembroGabriel> createState() => _MembroGabrielState();
}

class _MembroGabrielState extends State<MembroGabriel> {
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
                    image: AssetImage('images/gabriel_1x1.jpg'),
                    fit: BoxFit.cover,
                  ),
                ),
                child: const SizedBox(width: 50, height: 50),
              ),
              const SizedBox(height: 24),

              const Text(
                "Gabriel Rosa",
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
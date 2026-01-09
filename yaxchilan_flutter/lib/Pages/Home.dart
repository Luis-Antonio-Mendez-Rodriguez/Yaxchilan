import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Hola esto es una prueba'),
        backgroundColor: const Color.fromARGB(255, 55, 174, 75),
      ),
    );
  }
}
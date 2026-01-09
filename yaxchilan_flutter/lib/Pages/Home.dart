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

      body: Column(
        children: [
          Container(
            margin: EdgeInsets.only(top: 40,left: 20,right: 20),
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(color: const Color.fromARGB(255, 124, 124, 124))
              ]
            ),
            child: TextField(

            )
          )
        ],
      ), 
    );
  }
}
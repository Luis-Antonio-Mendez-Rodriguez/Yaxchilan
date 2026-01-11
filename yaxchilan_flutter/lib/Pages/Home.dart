import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Yaxchilan'),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 97, 97, 97),
      ),

      body: Column(
        children: [
          Row(
            children: [
              Container(
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 124, 124, 124),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Text(
                  'Link',
                  style: TextStyle(
                  fontSize: 20,
                  ),
                )
              ),
              Container(
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 124, 124, 124),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: TextField(
                  
                ),
              )
            ],
          ),
        ]
      ), 
    );
  }
}
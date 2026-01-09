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
          Container(
            margin: EdgeInsets.only(top: 40,left: 20,right: 20),
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(color: const Color.fromARGB(255, 40, 40, 40))
              ],
              borderRadius: BorderRadius.circular(16)
            ),
            child: TextField(
              decoration: const InputDecoration(
                hintText: 'Example: https://www.youtube.com/watch?v=YourMusicVideoToDownload',
                border: OutlineInputBorder(
                  borderSide: BorderSide.none
                )
              ),
              style: const TextStyle(
                color: Color.fromARGB(255, 205, 205, 205)
              ),
            )
          )
        ],
      ), 
    );
  }
}
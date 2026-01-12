import 'package:flutter/material.dart';

/*
-----------------------------------------------------------------------------------------------------------------------------------------------------------
Explanation:
This code in flutter was made by someone who learned it in a 20 minute video, so sorry if there is any incovenience

Structure
appbar
Body-
  Row-
    InformationField
    InformationField
    InformationField
    InformationField
    InformationField
    InformationField


*/

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
          Row(//---------------------------------------------------------------------------------------------------------------Start of Link flied information
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
                ),
              ),
              Expanded(child: Container(
                padding: const EdgeInsets.all(12),
                margin: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 124, 124, 124),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: TextField(
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: const Color.fromARGB(255, 124, 124, 124),
                    contentPadding: EdgeInsets.all(15),
                    hintText: 'Example: https://www.youtube.com/watch?v=Your-Video-Link'
                  ),
                  style: TextStyle(
                    color: const Color.fromARGB(255, 0, 0, 0),
                    fontSize: 18,
                  ),
                ),
              ))
            ],
          ),//-----------------------------------------------------------------------------------------------------------------End of link flied information
          Row(//---------------------------------------------------------------------------------------------------------------Start of Link flied information
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
                ),
              ),
              Expanded(child: Container(
                padding: const EdgeInsets.all(12),
                margin: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 124, 124, 124),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: TextField(
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: const Color.fromARGB(255, 124, 124, 124),
                    contentPadding: EdgeInsets.all(15),
                    hintText: 'Example: https://www.youtube.com/watch?v=Your-Video-Link'
                  ),
                  style: TextStyle(
                    color: const Color.fromARGB(255, 0, 0, 0),
                    fontSize: 18,
                  ),
                ),
              ))
            ],
          ),//-----------------------------------------------------------------------------------------------------------------End of link flied information
          
        ]
      ), 
    );
  }
}
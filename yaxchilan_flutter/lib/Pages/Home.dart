import 'package:flutter/material.dart';

/*
-----------------------------------------------------------------------------------------------------------------------------------------------------------
Explanation:
This code in flutter was made by someone who learned it in a 20 minute video, so sorry if there is any incovenience

Structure
appbar-
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
                width: 150,
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 124, 124, 124),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Center(
                  child: Text(
                    'Link',
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                )
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
          Row(//---------------------------------------------------------------------------------------------------------------Start of Artist flied information
            children: [
              Container(
                width: 150,
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 124, 124, 124),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Center(
                  child: Text(
                    'Artist',
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                )
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
                    hintText: 'Example: Masayoshi Takanaka'
                  ),
                  style: TextStyle(
                    color: const Color.fromARGB(255, 0, 0, 0),
                    fontSize: 18,
                  ),
                ),
              ))
            ],
          ),//-----------------------------------------------------------------------------------------------------------------End of Artist flied information
          Row(//---------------------------------------------------------------------------------------------------------------Start of Album flied information
            children: [
              Container(
                width: 150,
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 124, 124, 124),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Center(
                  child: Text(
                    'Album',
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                )
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
                    hintText: 'Example: Echoes'
                  ),
                  style: TextStyle(
                    color: const Color.fromARGB(255, 0, 0, 0),
                    fontSize: 18,
                  ),
                ),
              ))
            ],
          ),//-----------------------------------------------------------------------------------------------------------------End of Album flied information
          Row(//---------------------------------------------------------------------------------------------------------------Start of Song Position flied information
            children: [
              Container(
                width: 150,
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 124, 124, 124),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Center(
                  child: Text(
                    'Song Positon',
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                )
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
                    hintText: 'Example: 3'
                  ),
                  style: TextStyle(
                    color: const Color.fromARGB(255, 0, 0, 0),
                    fontSize: 18,
                  ),
                ),
              ))
            ],
          ),//-----------------------------------------------------------------------------------------------------------------End of Song Position flied information
          Row(//---------------------------------------------------------------------------------------------------------------Start of Gender flied information
            children: [
              Container(
                width: 150,
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 124, 124, 124),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Center(
                  child: Text(
                    'Gender',
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                )
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
                    hintText: 'Example: Experimental Rock'
                  ),
                  style: TextStyle(
                    color: const Color.fromARGB(255, 0, 0, 0),
                    fontSize: 18,
                  ),
                ),
              ))
            ],
          ),//-----------------------------------------------------------------------------------------------------------------End of Gender flied information
          Row(//---------------------------------------------------------------------------------------------------------------strat of album cover button
            children: [
              SizedBox(
                width: 200,
                height: 200,
                child: ElevatedButton(
                  onPressed: () {
                    //dooo stuffffffffffff
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 112, 112, 112),
                    foregroundColor: Colors.black,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.zero,
                    ),
                  ),
                  child: Text('Album cover')
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  //dooo stuffffffffffff
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromARGB(255, 112, 112, 112),
                  foregroundColor: Colors.black
                ),
                child: Text('DOWNLOAD')
              ),
            ],
          )//------------------------------------------------------------------------------------------------------------------End of album cover button and download button
        ]
      ), 
    );
  }
}
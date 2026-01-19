import 'dart:io';

import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:path_provider/path_provider.dart';

/*
-----------------------------------------------------------------------------------------------------------------------------------------------------------
Explanation:
This code in flutter was made by someone who learned it in a 20 minute video, so sorry if there is any incovenience.

The whole structure ininside a statefull widget.
There is a section 0 above everything else.
The Main structure is a staggered grid view divided in 3 sections.

------------------------------------
|              0                   |
------------------------------------
|                            |     |
|                            |     |
|              1             |  2  |
|                            |     |
|                            |     |
------------------------------------
|               3                  |
|                                  |
------------------------------------

Section 0: This is the Appbar, it only holds the title of the application.
Section 1: this is where all the information field for the metadata are written, the user is free to fill any field it wants, it is not nessesary to fill every single field.
Section 2: This is where the album cover and download button exist, as well as some other extra options that will be avaliable later in development.
Section 3: This is a shell viewer, so the user can see whats going on behind the front end.
*/

class HomePage extends StatelessWidget {
  const HomePage({super.key});


//This the the start of the Appbar
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Yaxchilan'),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 150, 150, 150),
      ),
//This the the end of the Appbar
//This is where we defined The 3 sections (1 - 3)
      body: StaggeredGrid.count(
        crossAxisCount: 10,
//This is where Section 1 starts
        children: [
          StaggeredGridTile.count(
            crossAxisCellCount: 8,
            mainAxisCellCount: 4,

            child: Column(
              children: [

                Row(
                  children: [
                    Expanded(child: Container(
                      margin: const EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 124, 124, 124),
                      ),
                      child: TextField(
                        decoration: InputDecoration(
                          labelText: 'Song URL',
                          filled: true,
                          fillColor: const Color.fromARGB(255, 124, 124, 124),
                          contentPadding: EdgeInsets.all(15),
                          hintText: 'Example: https://www.youtube.com/watch?v=Your-Video-Link'
                      ),
                      style: TextStyle(
                        color: const Color.fromARGB(255, 0, 0, 0),
                        fontSize: 14,
                      ),
                    ),
                  )),
                  ],
                ),

                Row(
                  children: [
                    Expanded(child: Container(
                      margin: const EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 124, 124, 124),
                      ),
                      child: TextField(
                        decoration: InputDecoration(
                          labelText: 'Song Name',
                          filled: true,
                          fillColor: const Color.fromARGB(255, 124, 124, 124),
                          contentPadding: EdgeInsets.all(15),
                          hintText: 'Example: Let You Break My Heart Again'
                      ),
                      style: TextStyle(
                        color: const Color.fromARGB(255, 0, 0, 0),
                        fontSize: 14,
                      ),
                    ),
                  )),
                  ],
                ),

                Row(
                  children: [
                    Expanded(child: Container(
                      margin: const EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 124, 124, 124),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: TextField(
                        decoration: InputDecoration(
                          labelText: 'Artist Name',
                          filled: true,
                          fillColor: const Color.fromARGB(255, 124, 124, 124),
                          contentPadding: EdgeInsets.all(15),
                          hintText: 'Example: Masayoshi Takanaka'
                      ),
                      style: TextStyle(
                        color: const Color.fromARGB(255, 0, 0, 0),
                        fontSize: 14,
                      ),
                    ),
                  )),
                  ],
                ),

                Row(
                  children: [
                    Expanded(child: Container(
                      margin: const EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 124, 124, 124),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: TextField(
                        decoration: InputDecoration(
                          labelText: 'Album Name',
                          filled: true,
                          fillColor: const Color.fromARGB(255, 124, 124, 124),
                          contentPadding: EdgeInsets.all(15),
                          hintText: 'The Rainbow Goblins'
                      ),
                      style: TextStyle(
                        color: const Color.fromARGB(255, 0, 0, 0),
                        fontSize: 14,
                      ),
                    ),
                  )),
                  ],
                ),

                Row(
                  children: [
                    Expanded(child: Container(
                      margin: const EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 124, 124, 124),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: TextField(
                        decoration: InputDecoration(
                          labelText: 'Track Number',
                          filled: true,
                          fillColor: const Color.fromARGB(255, 124, 124, 124),
                          contentPadding: EdgeInsets.all(15),
                          hintText: 'Example: 3'
                      ),
                      style: TextStyle(
                        color: const Color.fromARGB(255, 0, 0, 0),
                        fontSize: 14,
                      ),
                    ),
                  )),
                  ],
                ),
              ],
            ),
          ),
//This is where section 1 ends
//This is where sections 2 starts
          StaggeredGridTile.count(
            crossAxisCellCount: 2,
            mainAxisCellCount: 4,
            child: Container(
              padding: const EdgeInsets.all(16),
              child: Column(
                children: [
                  Container(
                    padding: const EdgeInsets.all(12),
                    child: Text(
                      'It is NOT neccesary to fill everything :D',
                      style: TextStyle(
                        color: Colors.blueGrey
                      ),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.all(12),
                    child: SizedBox(
                      width: 150,
                      height: 150,
                      child: IconButton(
                        icon: Image.asset('/home/luis/Escritorio/hola.jpg'),

                        onPressed: () async {
                          
                          FilePickerResult? result = await FilePicker.platform.pickFiles();
                          String ImageDirectory = result?.paths.toString() ?? '';
                          ImageDirectory = ImageDirectory.replaceAll('[', '').replaceAll(']', '');
                  
                          final File file =File('Metadata/SongMetadata.yax');

                          await file.writeAsString('hello, this is a second tedt LOLLLLLLLLLLLLLL');
                          
                          if (result != null) {
                            File file = File(result.files.single.path!);
                          } else {
                            // User canceled the picker
                          }

                        },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color.fromARGB(255, 112, 112, 112),
                        foregroundColor: Colors.black,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.zero,
                        ),
                      ),
                      //child: Text('Album cover')
                      ),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.all(12),
                    child: ElevatedButton(
                      onPressed: () {
                        //dooo stuffffffffffff
                      },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color.fromARGB(255, 112, 112, 112),
                      foregroundColor: Colors.black
                    ),
                    child: Text('DOWNLOAD')
                    ),
                  ),
                ],
              ),
            ),
          ),
//This is where sections 2 ends
//This is where sections 3 starts
          StaggeredGridTile.count(
            crossAxisCellCount: 10,
            mainAxisCellCount: 10,
            child: Container(color: Colors.blue),
          ),
//This is where sections 3 ends
        ],
      ),
    );
  }
}
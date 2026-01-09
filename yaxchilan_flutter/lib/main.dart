import 'package:flutter/material.dart';
import 'package:yaxchilan_flutter/Pages/Home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Yaxchilan',
      theme: ThemeData(
        colorScheme: .fromSeed(seedColor: const Color.fromARGB(255, 19, 18, 19)),
        scaffoldBackgroundColor: const Color.fromARGB(255, 20, 20, 19)
      ),
      debugShowCheckedModeBanner: false,
      home: HomePage()
    );
  }
}

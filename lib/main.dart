import 'package:arithmetic_app/arithmetic.dart';
import 'package:flutter/material.dart';

// Entry point ng Flutter app
void main() {
  runApp(MyApp());
}

// Pangunahing klase ng application
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      
      // Titulo ng app
      title: 'Arithmetic Operations',
      // Itinatago ang debug banner
      debugShowCheckedModeBanner: false,
      // Tema ng app
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // Unang screen ng app
      home: MyHomePage(),
    );
  }
}

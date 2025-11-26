import 'package:flutter/material.dart';
import 'package:appli_meteo/pages/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      
      home: HomePage(),
    );
  }
}


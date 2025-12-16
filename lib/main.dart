import 'package:flutter/material.dart';
import 'package:appli_meteo/src/pages/home.dart';
import 'package:appli_meteo/src/pages/widgets/grand_meteo.dart';
import 'package:appli_meteo/src/pages/services/meteo_api.dart';
import 'package:appli_meteo/src/pages/widgets/icons/meteo_icon.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      
      debugShowCheckedModeBanner: false,
      // theme: ThemeData(fontFamily: 'meteo' ),
      home: HomePage(),
    );
  }
}


import 'package:flutter/material.dart';

class MeteoIcon extends StatelessWidget {
  final String main;

  const MeteoIcon({super.key, required this.main});

  @override
  Widget build(BuildContext context) {
    IconData icon;

    switch (main.toLowerCase()) {
      case "clear":
        icon = Icons.wb_sunny;
        break;
      case "clouds":
        icon = Icons.cloud;
        break;
      case "rain":
        icon = Icons.umbrella;
        break;
      case "snow":
        icon = Icons.ac_unit;
        break;
      default:
        icon = Icons.cloud_queue;
    }

    return Icon(icon, size: 64, color: Colors.orangeAccent);
  }
}

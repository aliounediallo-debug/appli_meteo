import 'package:flutter/material.dart';
import 'package:appli_meteo/src/pages/widgets/icons/meteo_icon.dart';

class GrandMeteo extends StatelessWidget {
  final Map<String, dynamic>? data;

  const GrandMeteo({super.key, required this.data});

  @override
  Widget build(BuildContext context) {


    return Container(
      width: 300,
      height: 50,
      margin: const EdgeInsets.only(top: 20),
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 41, 2, 80),
        borderRadius: BorderRadius.circular(20),

      ),
      child: Wrap(
        spacing: 10,
        runSpacing: 12,
        children: [
          Text(
            data!["name"],
            style: const TextStyle(color: Colors.white, fontSize: 22),
          ),

          MeteoIcon(main: data!["weather"][0]["main"]),
          Text(
            "${data!["main"]["temp"].round()}°C",
            style: const TextStyle(
              color: Colors.white,
              fontSize: 48,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            data!["weather"][0]["description"],
            style: const TextStyle(color: Colors.white70),
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:appli_meteo/src/pages/widgets/icons/meteo_icon.dart';

class GrandMeteo extends StatelessWidget {
  final Map<String, dynamic>? data;

  const GrandMeteo({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    if (data == null) return const SizedBox();

    return Container(
      margin: const EdgeInsets.only(top: 20),
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 53, 46, 59),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        children: [
          Text(
            data!["name"],
            style: const TextStyle(color: Colors.white, fontSize: 22),
          ),
          const SizedBox(height: 10),
          MeteoIcon(main: data!["weather"][0]["main"]),
          const SizedBox(height: 10),
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

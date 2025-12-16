import 'package:flutter/material.dart';
import 'package:appli_meteo/src/pages/widgets/grand_meteo.dart';
import 'package:appli_meteo/src/pages/services/meteo_api.dart';
import 'package:appli_meteo/src/pages/widgets/grille_stat.dart';
import 'package:appli_meteo/src/pages/recherche.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final TextEditingController searchController = TextEditingController();
  Map<String, dynamic>? weatherData;

  void fetchWeather() async {
    String city = searchController.text.trim();
    if (city.isEmpty) return;

    final result = await WeatherApi.fetchWeatherByCity(city);

    setState(() {
      weatherData = result;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        toolbarHeight: 120,
        elevation: 0,

        title: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Image.asset("img/brightness.png", width: 28),
                    const SizedBox(width: 6),
                    const Text(
                      "MÉTÉO",
                      style: TextStyle(
                        color: Color.fromARGB(255, 35, 107, 165),
                        fontSize: 18,
                      ),
                    ),
                  ],
                ),

                IconButton(
                  icon: const Icon(Icons.search, color: Colors.black),
                  onPressed: () async {
                    final city = await Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) => const Recherche(),
                      ),
                    );

                    if (city != null) {
                      searchController.text = city;
                      fetchWeather();
                    }
                  },
                ),
              ],
            ),

            const SizedBox(height: 12),

            const Text(
              "Comment va\nle temps\naujourd'hui ?",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 22,
                color: Colors.black,
              ),
            ),
          ],
        ),
      ),

      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            GrandMeteo(data: weatherData),
            const SizedBox(height: 16),
            GrilleStat(),
          ],
        ),
      ),
    );
  }
}

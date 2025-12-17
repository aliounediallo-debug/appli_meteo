import 'package:flutter/material.dart';
import 'package:appli_meteo/src/pages/recherche.dart';
import 'package:appli_meteo/src/pages/services/meteo_api.dart';
import 'package:appli_meteo/src/pages/widgets/grand_meteo.dart';
import 'package:appli_meteo/src/pages/widgets/grille_stat.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final TextEditingController searchController = TextEditingController();

  Map<String, dynamic>? weatherData;
  bool isLoading = false;

  /// Appel API météo
  Future<void> fetchWeather() async {
    final city = searchController.text.trim();
    if (city.isEmpty) return;

    setState(() => isLoading = true);

    final result = await WeatherApi.fetchWeatherByCity(city);

    setState(() {
      weatherData = result;
      isLoading = false;
    });
  }
  @override
void initState() {
  super.initState();
  searchController.text = "Dakar";
  fetchWeather(); // appel automatique
}


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 252, 252, 252),

      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 252, 252, 252),
        elevation: 0,
        centerTitle: true,
        toolbarHeight: 120,
        title: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Image.asset(
                      "img/brightness.png",
                      width: 28,
                      height: 28,
                    ),
                    const SizedBox(width: 6),
                    const Text(
                      "MÉTÉO",
                      style: TextStyle(
                        color: Color.fromARGB(255, 35, 107, 165),
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
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
                color: Color.fromARGB(255, 20, 20, 20),
              ),
            ),
          ],
        ),
      ),

      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            if (isLoading)
              const Padding(
                padding: EdgeInsets.all(20),
                child: CircularProgressIndicator(),
              ),

            if (!isLoading && weatherData != null) ...[
              GrandMeteo(data: weatherData),
              const SizedBox(height: 20),
              GrilleStat(),
            ],

            if (!isLoading && weatherData == null)
              const Padding(
                padding: EdgeInsets.only(top: 40),
                child: Text(
                  "🔍 Recherchez une ville pour voir la météo",
                  style: TextStyle(color: Colors.black54),
                ),
              ),
          ],
        ),
      ),
    );
  }
}

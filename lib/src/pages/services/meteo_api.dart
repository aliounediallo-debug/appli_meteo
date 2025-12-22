import 'dart:convert';
import 'package:http/http.dart' as http;

class WeatherApi {
  static const String _apiKey = "f76f9c069a4d17da06b4a5d088a13376";
  static const String _baseUrl =
  "https://api.openweathermap.org/data/2.5/weather";


  static Future<Map<String, dynamic>?> fetchWeatherByCity(String city) async {
    final url =
        "$_baseUrl?q=$city&appid=$_apiKey&units=metric&lang=fr";

    try {
      final response = await http.get(Uri.parse(url));

      if (response.statusCode == 200) {
        return json.decode(response.body);
      } else {
        print("Erreur API : ${response.body}");
        return null;
      }
    } catch (e) {
      print("Erreur réseau : $e");
      return null;
    }
  }
}

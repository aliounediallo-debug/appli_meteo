import 'dart:convert';
import 'package:http/http.dart' as http;

class WeatherApi {
  static const String apiKey = "";

  static Future<Map<String, dynamic>?> getCurrentWeather(String city) async {
    final url = Uri.parse(
      "https://api.openweathermap.org/data/2.5/weather?q=$city&units=metric&lang=fr&appid=$apiKey",
    );

    final response = await http.get(url);

    if (response.statusCode == 200) {
      return jsonDecode(response.body);
    }
    return null;
  }

  static Future<List<dynamic>> getForecast(double lat, double lon) async {
    final url = Uri.parse(
      "https://api.openweathermap.org/data/2.5/forecast?lat=$lat&lon=$lon&units=metric&lang=fr&appid=$apiKey",
    );

    final response = await http.get(url);

    if (response.statusCode == 200) {
      return jsonDecode(response.body)["list"];
    }
    return [];
  }
}

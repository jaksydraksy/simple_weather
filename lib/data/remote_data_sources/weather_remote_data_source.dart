import 'package:dio/dio.dart';

class WeatherRemoteDataSource {
  Future<Map<String, dynamic>?> getWeatherData({
    required String city,
  }) async {
    final response = await Dio().get(
        'http://api.weatherapi.com/v1/current.json?key=d6f9bb291b1044a7991130804233001&q=$city&aqi=yes');
    return response.data;
  }
}

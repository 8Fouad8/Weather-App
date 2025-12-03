import 'dart:developer';
import 'package:dio/dio.dart';
import 'package:weather_app/models/weather_model.dart';

class WeatherServices {
  final Dio dio;
  final String baseUrl = 'https://api.weatherapi.com/v1';
  final String apiKey = '56405ae5e2af496190b104417252906';

  WeatherServices(this.dio);

  Future<WeatherModel> getCurrentWeather({required String cityName}) async {
    try {
      Response response = await dio.get(
        '$baseUrl/forecast.json?key=$apiKey&q=$cityName',
    );

      WeatherModel weatherModel = WeatherModel.fromJson(response.data);


      return weatherModel;
    } on DioException catch (e) {
    final errorMessage = e.response?.data['error']['message'] ?? 'An unknown error occurred'; 
    throw Exception(errorMessage);
    }catch (e) {
    log(e.toString());
    throw Exception('An unknown error occurred');
    }
  }
}

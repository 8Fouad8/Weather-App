import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/cubits/get_weather_cubit/get_weather_cubit.dart';
import 'package:weather_app/cubits/get_weather_cubit/get_weather_states.dart';
import 'package:weather_app/views/home_view.dart';

void main() {
  runApp(const WeatherApp());
}

class WeatherApp extends StatelessWidget {
  const WeatherApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => GetWeatherCubit(),
      child: Builder(
        builder: (context) => BlocBuilder<GetWeatherCubit, WeatherState>(
          builder: (context, state) {
            return MaterialApp(
              theme: ThemeData(
                useMaterial3: false,
                primarySwatch: getThemeColor(
                  BlocProvider.of<GetWeatherCubit>(
                    context,
                  ).weatherModel?.weatherCondition,
                ),
              ),
              debugShowCheckedModeBanner: false,
              title: 'Weather App',

              home: const HomeView(),
            );
          },
        ),
      ),
    );
  }
}


MaterialColor getThemeColor(String? condition) {
  const Map<String, MaterialColor> colors = {
    'Sunny': Colors.yellow,
    'Clear': Colors.blue,
    'Partly cloudy': Colors.blueGrey,
    'Cloudy': Colors.grey,
    'Overcast': Colors.blueGrey,
    'Mist': Colors.indigo,
    'Fog': Colors.indigo,
    'Freezing fog': Colors.indigo,
    'Patchy rain possible': Colors.lightBlue,
    'Patchy snow possible': Colors.lightBlue,
    'Patchy sleet possible': Colors.teal,
    'Patchy freezing drizzle possible': Colors.cyan,
    'Thundery outbreaks possible': Colors.deepOrange,
    'Blowing snow': Colors.lightBlue,
    'Blizzard': Colors.blueGrey,
    'Patchy light drizzle': Colors.lightBlue,
    'Light drizzle': Colors.lightBlue,
    'Freezing drizzle': Colors.cyan,
    'Heavy freezing drizzle': Colors.deepPurple,
    'Patchy light rain': Colors.blue,
    'Light rain': Colors.blue,
    'Moderate rain at times': Colors.indigo,
    'Moderate rain': Colors.indigo,
    'Heavy rain at times': Colors.deepPurple,
    'Heavy rain': Colors.deepPurple,
    'Light freezing rain': Colors.cyan,
    'Moderate or heavy freezing rain': Colors.deepPurple,
    'Light sleet': Colors.teal,
    'Moderate or heavy sleet': Colors.teal,
    'Patchy light snow': Colors.cyan,
    'Light snow': Colors.cyan,
    'Patchy moderate snow': Colors.lightBlue,
    'Moderate snow': Colors.lightBlue,
    'Patchy heavy snow': Colors.blueGrey,
    'Heavy snow': Colors.blueGrey,
    'Ice pellets': Colors.deepPurple,
    'Light rain shower': Colors.lightBlue,
    'Moderate or heavy rain shower': Colors.blue,
    'Torrential rain shower': Colors.deepPurple,
    'Light sleet showers': Colors.teal,
    'Moderate or heavy sleet showers': Colors.teal,
    'Light snow showers': Colors.cyan,
    'Moderate or heavy snow showers': Colors.lightBlue,
    'Light showers of ice pellets': Colors.deepPurple,
    'Moderate or heavy showers of ice pellets': Colors.deepPurple,
    'Patchy light rain with thunder': Colors.deepOrange,
    'Moderate or heavy rain with thunder': Colors.deepOrange,
    'Patchy light snow with thunder': Colors.deepOrange,
    'Moderate or heavy snow with thunder': Colors.deepOrange,
  };

  return colors[condition] ?? Colors.blue;
}


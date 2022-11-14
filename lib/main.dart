import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:showcaseview/showcaseview.dart';
import 'package:weather/pages/homescreen.dart';
import 'package:weather/provider/weather_provider.dart';

void main() {
  runApp(MultiProvider(providers: [
    ChangeNotifierProvider<WeatherProvider>(create: (_)=>WeatherProvider())
  ],child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ShowCaseWidget(
        builder: Builder(
          builder: ((context) =>HomeScreen() )),
         ),
    );
  }
}


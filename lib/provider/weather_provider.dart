
import 'package:flutter/cupertino.dart';
import 'package:weather/models/current_weather_response.dart';
import 'package:weather/services/apiservices.dart';

class WeatherProvider with ChangeNotifier{
  CurretWeatherResponse response= CurretWeatherResponse();
  bool isLoading=false;

  getWeatherData(context) async {
    isLoading=true;
    response=(await getCurrentData())!;
    print(response.name);
    isLoading=false;
    notifyListeners();
  }

}
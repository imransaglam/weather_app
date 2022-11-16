import 'dart:convert';
import 'dart:developer';

import 'package:weather/models/current_weather_response.dart';
import 'package:http/http.dart' as http ;
import 'package:weather/models/weather_forecast_response.dart';

Future<CurretWeatherResponse?>getCurrentData() async{
  CurretWeatherResponse weatherResponse;
  try{
    final response=await http.get(Uri.parse(
      "https://api.openweathermap.org/data/2.5/weather?lat=41.0327&lon=29.0319&appid=a33b01591c63f70c4db98974b0da27e3&units=metric"));
      weatherResponse=CurretWeatherResponse.fromJson(jsonDecode(response.body));
      return weatherResponse;
    
  }
  catch(e){
    log(e.toString());
  }
  }
  Future<WeatherForecastResponse?>getCurrentData2() async{
  WeatherForecastResponse forecastingResponse;
  try{
    final response=await http.get(Uri.parse(
      "https://api.openweathermap.org/data/2.5/forecast?lat=41.0327&lon=29.0319&appid=a33b01591c63f70c4db98974b0da27e3&units=metric"));
      forecastingResponse=WeatherForecastResponse.fromJson(jsonDecode(response.body));
      return forecastingResponse;
    
  }
  catch(e){
    log(e.toString());
  }
  }
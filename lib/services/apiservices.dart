
import 'dart:convert';
import 'dart:developer';

import 'package:weather/models/current_weather_response.dart';
import 'package:http/http.dart' as http ;

Future<CurretWeatherResponse?>getCurrentData() async{
  CurretWeatherResponse weatherResponse;
  try{
    final response=await http.get(Uri.parse(
      "https://api.openweathermap.org/data/2.5/weather?lat=41.0327&lon=29.0319&appid=a33b01591c63f70c4db98974b0da27e3"));
      weatherResponse=CurretWeatherResponse.fromJson(jsonDecode(response.body));
      return weatherResponse;
    
  }
  catch(e){
    log(e.toString());
  }
  }
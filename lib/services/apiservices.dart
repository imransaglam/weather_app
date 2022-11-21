import 'dart:convert';
import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:weather/models/current_weather_response.dart';
import 'package:http/http.dart' as http ;
import 'package:weather/models/weather_forecast_response.dart';
import 'package:weather/services/logging.dart';

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


  
  //client olusturduk
  final Dio _dio=Dio(BaseOptions(
    baseUrl:"https://api.openweathermap.org/data/2.5/",
    connectTimeout: 5000,
    receiveTimeout: 3000,))
    ..interceptors.add(Logging());
  Future<WeatherForecastResponse?>getCurrentData2() async{
  WeatherForecastResponse forecastingResponse;
  try{
    //-----http-------
    // final response=await http.get(Uri.parse(
      // "https://api.openweathermap.org/data/2.5/forecast?lat=41.0327&lon=29.0319&appid=a33b01591c63f70c4db98974b0da27e3&units=metric"));
    //------Dio()------
      //final response=await Dio().get("https://api.openweathermap.org/data/2.5/forecast?lat=41.0327&lon=29.0319&appid=a33b01591c63f70c4db98974b0da27e3&units=metric");
     //------Dio()-----
      //final response = await Dio().get('https://api.openweathermap.org/data/2.5/forecast', queryParameters: {'lat': 41.0327, 'lon': 29.0319,'appid': 'a33b01591c63f70c4db98974b0da27e3', 'units': 'metric'});
      final response=await _dio.get("forecast?lat=41.0327&lon=29.0319&appid=a33b01591c63f70c4db98974b0da27e3&units=metric");
      forecastingResponse=WeatherForecastResponse.fromJson(response.data);
      print(forecastingResponse.city!.sunrise);
      switch(response.statusCode){
        case 200:
        Fluttertoast.showToast(msg: "200,The request is succedded.");
        break;
        case 404:
        Fluttertoast.showToast(msg: "The HTTP 404 Not Found response status code indicates that the server cannot find the requested resource.");
        break;
        case 500:
        Fluttertoast.showToast(msg: "500, The server has encountered a situation it does not know how to handle.");
        break;
        
        default:{}
      }
      
    return forecastingResponse;
  }
  
  catch(e){
    log(e.toString());
  }
 return null;
  }
  
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:provider/provider.dart';
import 'package:weather/provider/forecasting_provider.dart';

import '../models/current_weather_response.dart';

class CardDetails extends StatefulWidget {
  final CurretWeatherResponse curretWeatherResponse;
  const CardDetails({super.key, required this.curretWeatherResponse});

  @override
  State<CardDetails> createState() => _CardDetailsState();
}

class _CardDetailsState extends State<CardDetails> {
  @override
  Widget build(BuildContext context) {
    return  Consumer(builder: (context,ForecastingProvider value, child){
      return value.isLoading?CircularProgressIndicator():
       Container(
      width: double.infinity,
      height: 370,
      decoration: BoxDecoration(
       gradient: LinearGradient(colors: [
        Color(0xff4F80FA),
        Color(0xff335FD1),
       ])
      ),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top:30,left:15,right: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTap: (() => Navigator.pop(context)),
                  child: Image.asset("assets/images/backicon.png")),
                Text(widget.curretWeatherResponse.sys!.country.toString(),style: TextStyle(color: Colors.white,fontSize: 14,fontWeight: FontWeight.w500),),
                Image.asset("assets/images/threedot.png"),
              ],
            ),
          ),
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 40),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(widget.curretWeatherResponse.name.toString(),style: TextStyle(color: Colors.white,fontSize: 14,fontWeight: FontWeight.w400),),
                    Text("${value.response.list![value.currentIndex].dtTxt.toString().split(" ").last.toString().substring(0,5).toString()}",style: TextStyle(color: Colors.white,fontSize: 14,fontWeight: FontWeight.w400),),
                    Text("${value.response.list![value.currentIndex].dtTxt.toString().split(" ").first.toString().substring(0,10).toString()}",style: TextStyle(color: Colors.white,fontSize: 14,fontWeight: FontWeight.w400),),
                  ],
                ),
              ),
               Padding(
                 padding: const EdgeInsets.only(top:20),
                 child: Image.network("http://openweathermap.org/img/wn/${value.response.list![value.currentIndex].weather?.first.icon ?? "10d"}@2x.png"),
               ),
               Padding(
                 padding: const EdgeInsets.only(top:0),
                 child: Text("${value.response.list![value.currentIndex].main!.temp.toInt().toString()}",style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.w400),),
               ),
               Padding(
                 padding: const EdgeInsets.only(top:10),
                 child: Text("${value.response.list![value.currentIndex].weather![0].description!}",style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.w600),),
               ),
               Padding(
                 padding: const EdgeInsets.only(top:20,left: 160),
                 child: Row(children: [
                 Text(widget.curretWeatherResponse.name.toString(),style: TextStyle(color: Colors.white,fontSize: 14,fontWeight: FontWeight.w400),),
                 Image.asset("assets/images/refresh.png"),

                 ],),
               )
               
            ],
          )
        ],
      ),
    );
    });
   
  }
}
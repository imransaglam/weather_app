import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:weather/models/current_weather_response.dart';
import 'package:weather/pages/details.dart';

class HomeDescription extends StatefulWidget {
  final CurretWeatherResponse curretWeatherResponse;
  const HomeDescription({super.key, required this.curretWeatherResponse});

  @override
  State<HomeDescription> createState() => _HomeDescriptionState();
}

class _HomeDescriptionState extends State<HomeDescription> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
       onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: ((context) => DetailsScreen())));
            },
      child: Stack(
        children: [
          Container(
            width: double.infinity,
            height: 193,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                gradient: LinearGradient(colors: [
                  Color(0xff4F7FFA),
                  Color(0xff335FD1),
                ])),
          ),
          Positioned(
            top: 20,
            left: 25,
            right: 15,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(widget.curretWeatherResponse.sys!.country.toString()+ "  20 Desember 2021",style: TextStyle(color: Colors.white,fontSize: 14,fontWeight: FontWeight.w400),),
                Text("${DateTime.fromMicrosecondsSinceEpoch(widget.curretWeatherResponse.dt!).hour}:${DateTime.fromMicrosecondsSinceEpoch(widget.curretWeatherResponse.dt!).minute}",style: TextStyle(color: Colors.white,fontSize: 14,fontWeight: FontWeight.w400),),
              ],
            ),
          ),
          Positioned(
            top: 55,
            left: 5,
            child: Image.asset("assets/images/Group21.png")),
          Positioned(
            top: 70,
            left: 110,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(widget.curretWeatherResponse.main!.temp!.toInt().toString(),style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.w400),),
               Text(widget.curretWeatherResponse.weather![0].description.toString(),style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.w600),)],
            ),
          ),
          Positioned(
            bottom: 25,
            left: 25,
            child: Row(
              children: [
                Text(widget.curretWeatherResponse.name.toString(),style: TextStyle(color: Colors.white,fontSize: 14,fontWeight: FontWeight.w400),),
                Image.asset("assets/images/refresh.png")
              ],
            ),
          )
        ],
      ),
    );
  }
}

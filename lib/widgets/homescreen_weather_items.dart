import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class WeatherItems extends StatefulWidget {
  final  String image;
  final  String weather;
  final  String time;
  const WeatherItems({super.key, required this.image, required this.weather, required this.time});

  @override
  State<WeatherItems> createState() => _WeatherItemsState();
}

class _WeatherItemsState extends State<WeatherItems> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left:10,top: 10),
      child: Container(
        width: 78,
        //height: 107,
       
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(4),
          color:Color(0xfffbfbfb)
           //color: Colors.green,
        ),
        child: Stack(
          children: [
            Image.asset(widget.image),
            Positioned(
              top: 50,
              left: 30,
              child: Text(widget.weather+"°" ,style: TextStyle(color: Color(0xff201C1C),fontSize: 14,fontWeight: FontWeight.w600),)),
            Positioned(
              top: 80,
              left: 14,
              child: Text(widget.time,style: TextStyle(color: Color(0xff494343),fontSize: 12,fontWeight: FontWeight.w400)))
          ],
        ),
      ),
    );
  }
}
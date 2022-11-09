import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class CardItems extends StatefulWidget {
   final String weatherImage;
  final  String weatherCity;
  final  String city;
  final  String number;
  const CardItems({super.key, required this.weatherImage, required this.weatherCity, required this.city, required this.number});

  @override
  State<CardItems> createState() => _CardItemsState();
}

class _CardItemsState extends State<CardItems> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom:10,),
      child: Container(
        width: double.infinity,
        height: 72,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: Color(0xffD2DFFF),
        ),
        child: Row(
        
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Container(
                alignment: Alignment.center,
                width: 40,
                height: 40,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Color(0xff9AB6FF)
                ),
                child: Image.asset(widget.weatherImage,)),
            ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top:18,left: 15),
                    child: Text(widget.weatherCity,style: TextStyle(color:Color(0xff201C1C),fontSize: 14,fontWeight: FontWeight.w600),),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 15,top: 8),
                    child: Text(widget.city,style: TextStyle(color:Color(0xff494343),fontSize: 13,fontWeight: FontWeight.w400),),
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(left: 80),
                child: Text(widget.number+"°C",style: TextStyle(color:Color(0xff201C1C),fontSize: 14,fontWeight: FontWeight.w600),),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 80),
                child: Image.asset("assets/images/coolicon.png"),
              )

          ],
        ),
      ),
    );
  }
}
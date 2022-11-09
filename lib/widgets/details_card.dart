import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class CardDetails extends StatefulWidget {
  const CardDetails({super.key});

  @override
  State<CardDetails> createState() => _CardDetailsState();
}

class _CardDetailsState extends State<CardDetails> {
  @override
  Widget build(BuildContext context) {
    return Container(
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
                Text("Tanjungsiang,Subang",style: TextStyle(color: Colors.white,fontSize: 14,fontWeight: FontWeight.w500),),
                Image.asset("assets/images/threedot.png"),
              ],
            ),
          ),
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 40),
                child: Text("Senin, 20 Desember 2021-3.30 PM",style: TextStyle(color: Colors.white,fontSize: 14,fontWeight: FontWeight.w400),),
              ),
               Padding(
                 padding: const EdgeInsets.only(top:20),
                 child: Image.asset("assets/images/Group21.png"),
               ),
               Padding(
                 padding: const EdgeInsets.only(top:0),
                 child: Text("18° C",style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.w400),),
               ),
               Padding(
                 padding: const EdgeInsets.only(top:10),
                 child: Text("Hujan  Berawan",style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.w600),),
               ),
               Padding(
                 padding: const EdgeInsets.only(top:20,left: 120),
                 child: Row(children: [
                 Text("Terakhir update 3.00 PM ",style: TextStyle(color: Colors.white,fontSize: 14,fontWeight: FontWeight.w400),),
                 Image.asset("assets/images/refresh.png"),

                 ],),
               )
               
            ],
          )
        ],
      ),
    );
  }
}
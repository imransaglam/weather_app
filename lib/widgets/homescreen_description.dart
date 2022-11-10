import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:weather/pages/details.dart';

class HomeDescription extends StatefulWidget {
  const HomeDescription({super.key});

  @override
  State<HomeDescription> createState() => _HomeDescriptionState();
}

class _HomeDescriptionState extends State<HomeDescription> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 15),
      child: GestureDetector(
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
                  Text("Senin, 20 Desember 2021",style: TextStyle(color: Colors.white,fontSize: 14,fontWeight: FontWeight.w400),),
                  Text("3.30 PM",style: TextStyle(color: Colors.white,fontSize: 14,fontWeight: FontWeight.w400),),
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
                  Text("18° C",style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.w400),),
                 Text("Hujan  Berawan",style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.w600),)],
              ),
            ),
            Positioned(
              bottom: 25,
              left: 25,
              child: Row(
                children: [
                  Text("Terakhir update 3.00 PM ",style: TextStyle(color: Colors.white,fontSize: 14,fontWeight: FontWeight.w400),),
                  Image.asset("assets/images/refresh.png")
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

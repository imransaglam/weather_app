import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:showcaseview/showcaseview.dart';
import 'package:weather/widgets/homescreen_dropdown.dart';

class HomeAppBar extends StatefulWidget {
  const HomeAppBar({super.key});

  @override
  State<HomeAppBar> createState() => _HomeAppBarState();
}

class _HomeAppBarState extends State<HomeAppBar> {
  
  @override
  Widget build(BuildContext context) {
    return Container(
      
      width:double.infinity,
      height: 30,
      //color: Colors.red,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
          Image.asset("assets/images/location.png",height: 24,width: 24,),
          SizedBox(width: 15,),
          HomeDropDown(),
            ],
          ),
          Image.asset("assets/images/search.png")
          
        ],
      ),
    );
  }
}
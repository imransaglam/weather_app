import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:weather/widgets/homescree_desc_text2.dart';
import 'package:weather/widgets/homescreen_appbar.dart';
import 'package:weather/widgets/homescreen_card_items.dart';
import 'package:weather/widgets/homescreen_desc_card.dart';
import 'package:weather/widgets/homescreen_desc_text.dart';
import 'package:weather/widgets/homescreen_description.dart';
import 'package:weather/widgets/homescreen_weather_items.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<String>images=[
    "assets/images/partly_cloudy.png",
    "assets/images/rainy.png",
    "assets/images/night_storm.png",
    "assets/images/rainy.png",
    "assets/images/partly_cloudy.png",
    "assets/images/rainy.png",
    "assets/images/night_storm.png",
    "assets/images/rainy.png",
    "assets/images/partly_cloudy.png",
    "assets/images/rainy.png",
    "assets/images/night_storm.png",
    "assets/images/rainy.png",
    "assets/images/partly_cloudy.png",
    "assets/images/rainy.png",
    "assets/images/night_storm.png",
    "assets/images/rainy.png",
    "assets/images/partly_cloudy.png",
    "assets/images/rainy.png",
    "assets/images/night_storm.png",
    "assets/images/rainy.png",
    "assets/images/partly_cloudy.png",
    "assets/images/rainy.png",
    "assets/images/night_storm.png",
    "assets/images/rainy.png",
  ];
  List<String>weathers=[
    "20",
    "20",
    "19",
    "19",
    "20",
    "20",
    "19",
    "19",
    "20",
    "20",
    "19",
    "19",
    "20",
    "20",
    "19",
    "19",
    "20",
    "20",
    "19",
    "19",
    "20",
    "20",
    "19",
    "19",
  ];
  List<String>times=[
    "00.00 AM",
    "1.00 AM",
    "2.00 AM",
    "3.00 AM",
    "4.00 AM",
    "5.00 AM",
    "6.00 AM",
    "7.00 AM",
    "8.00 AM",
    "9.00 AM",
    "10.00 AM",
    "11.00 AM",
    "12.00 PM",
    "1.00 PM",
    "2.00 PM",
    "3.00 PM",
    "4.00 PM",
    "5.00 PM",
    "6.00 PM",
    "7.00 PM",
    "8.00 PM",
    "9.00 PM",
    "10.00 PM",
    "11.00 PM",
  ];
  List<String> weatherImages=[
    "assets/images/Rain_storm.png",
    "assets/images/rainy2.png",
    "assets/images/Rain_storm.png",
  ];
   List<String> weatherCities=[
    "Selasa",
    "Rabu",
    "Kamis",
  ];
   List<String> cities=[
    "Hujan Petir",
    "Hujan Deras",
    "Hujan Deras",
  ];
   List<String> numbers=[
    "19",
    "17",
    "17",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body:SafeArea(
        child: Padding(
          padding: EdgeInsets.only(left:15,right: 15,top: 10),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                HomeAppBar(),
                HomeDescription(),
                HomeText(),
                Container(
                  //color: Colors.red,
                  width: double.infinity,
                  height: 123,
                  child: ListView.builder(
                    itemCount: images.length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: ((context, index) {
                    return WeatherItems(image: images[index], weather: weathers[index], time: times[index]);
                  
                  })),
                ),
                HomeText2(),
                DescriptionCard(),
                Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: Container(
                    width: double.infinity,
                    height: 240,
                    child: ListView.builder(
                      itemCount: weatherImages.length,
                      scrollDirection: Axis.vertical,
                      itemBuilder: ((context, index) {
                      return CardItems(weatherImage: weatherImages[index], weatherCity: weatherCities[index], city: cities[index], number: numbers[index]);
                    })),

                  ),
                )
          
              ],
            ),
          ),
        ),
      ),
    );
  }
}
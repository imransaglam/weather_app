import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:weather/widgets/details_aq%C4%B1.dart';
import 'package:weather/widgets/details_card.dart';
import 'package:weather/widgets/details_information.dart';
import 'package:weather/widgets/homescreen_desc_text.dart';
import 'package:weather/widgets/homescreen_weather_items.dart';

class DetailsScreen extends StatefulWidget {
  const DetailsScreen({super.key});

  @override
  State<DetailsScreen> createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {
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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CardDetails(),
              Padding(
                padding: const EdgeInsets.only(top: 8,left: 10),
                child: HomeText(),
              ),
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
                  Padding(
                    padding: const EdgeInsets.only(top: 8,left: 10),
                    child: DetailsInformation(),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 8,left: 10),
                    child: DetailsAQI(),
                  ),
            ],
          ),
        ),
      ),
    );
  }
}
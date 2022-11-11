import 'package:animate_do/animate_do.dart';
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
  List<String> informations=[
    "86%",
    "940hPa",
    "1km/h",
    "14%",
  ];
  List<String>w_city=[
    "Kelembaban",
    "Tekanan Udara",
    "Kecepatan Angin",
    "Kaput",
  ];
  List<String>w_image=[
    "assets/images/blaze-line.png",
    "assets/images/haze-2-line.png",
    "assets/images/windy-line.png",
    "assets/images/mist-line.png",
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
              ElasticInRight(
                child: Container(
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
              ),
                  Padding(
                    padding: const EdgeInsets.only(top: 8,left: 10),
                    child: DetailsInformation(),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 8,left: 10),
                    child: DetailsAQI(),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      //color: Colors.red,
                      width: double.infinity,
                      height: 140,
                      child: GridView.builder(
                        physics: NeverScrollableScrollPhysics(),
                        gridDelegate:SliverGridDelegateWithFixedCrossAxisCount(
                        childAspectRatio: 9 / 3,
                        crossAxisCount: 2,
                        mainAxisSpacing: 10,
                        crossAxisSpacing: 10,),
                        itemCount: informations.length,
                        itemBuilder: (context, index) {
                          return Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              //color: Colors.green,
                              color: Color(0xffFAFAFA),
                            ),
                            child: Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Image.asset(w_image[index]),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 13),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(informations[index],style: TextStyle(color: Color(0xff201C1C),fontSize: 14,fontWeight: FontWeight.w600),),
                                      Padding(
                                        padding: const EdgeInsets.only(top:5.0),
                                        child: Text(w_city[index],style: TextStyle(color: Color(0xff494343),fontSize: 13,fontWeight: FontWeight.w400),),
                                      ),
                                    ],
                                  ),
                                )
                              ],
                              
                            ),

                          );
                        },
                        ),
                    ),
                  )
            ],
          ),
        ),
      ),
    );
  }
}
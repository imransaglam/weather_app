import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:provider/provider.dart';
import 'package:showcaseview/showcaseview.dart';
import 'package:weather/models/current_weather_response.dart';
import 'package:weather/provider/weather_provider.dart';
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
    @override
      WeatherProvider ?wetProvider;
  final _key1=GlobalKey();
  final _key2=GlobalKey();
    void initState(){
     
  WidgetsBinding.instance.addPostFrameCallback(
    (_) => ShowCaseWidget.of(context).startShowCase(
      [
        _key1,
        _key2,
      ],
    ),
  ); 
    wetProvider=Provider.of<WeatherProvider>(context,listen:false);
      wetProvider!.getWeatherData(context);
      super.initState();
    
    }
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
      body: Padding(
          padding: EdgeInsets.only(left:15,right: 15,top: 10),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 20,bottom: 10),
                  child: HomeAppBar()),
                   Consumer(
                    builder: ((context, WeatherProvider weathProvider, child) => weathProvider.isLoading==true?CircularProgressIndicator():
                    Showcase(
                      key:_key1,
                      description: "You can see the weather in your area",
                      child: HomeDescription(curretWeatherResponse: wetProvider!.response,))
                    ),
                  ),
                Consumer(
                  builder: (context, WeatherProvider weathProvider1, child) => weathProvider1.isLoading==true?CircularProgressIndicator():
                   Padding(
                              padding: const EdgeInsets.only(top: 20,left:3,bottom: 8),
                              child: Text(weathProvider1.response.name.toString(),style: TextStyle(fontSize: 20,fontWeight:FontWeight.w500),),
                             ),
                  
                ),
                SlideInLeft(
                  child: Showcase(
                    key: _key2,
                    description: "You can see the hourly weather in your area",
                    child: Container(
                      //color: Colors.red,
                      width: double.infinity,
                      height: 123,
                      child: ListView.builder(
                        physics: NeverScrollableScrollPhysics(),
                        itemCount: images.length,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: ((context, index) {
                        return WeatherItems(image: images[index], weather: weathers[index], time: times[index]);
                      
                      })),
                    ),
                  ),
                ),
                HomeText2(),
                DescriptionCard(),
                Padding(
                  padding: const EdgeInsets.only(top: 5),
                  child: Container(
                    width: double.infinity,
                    height: 300,
                    child: ListView.builder(
                      physics: NeverScrollableScrollPhysics(),
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
      );
        
       
    
  }
}
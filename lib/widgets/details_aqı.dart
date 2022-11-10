import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class DetailsAQI extends StatefulWidget {
  const DetailsAQI({super.key});

  @override
  State<DetailsAQI> createState() => _DetailsAQIState();
}

class _DetailsAQIState extends State<DetailsAQI> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 120,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: Color(0xffFAFAFA),
      ),
      child: Row(
        children: [
          Stack(
            children: [
              Container(
                 padding: EdgeInsets.only(left: 20),
                  height: 150,
                  child:Row(
                    children: [
                       Container(
                        // color: Colors.amber,
                        width: 60,
                        height: 60,
                        child: Stack(
                          children: [
                             Center(
                                child: Text(
                              "12",
                              style:
                                  TextStyle(color: Colors.green, fontSize: 18),
                            )),
                            Center(
                              child: Container(
                                //color: Colors.yellow,
                                height: 90,
                                width: 120,
                                child: CircularProgressIndicator(
                                  backgroundColor: Colors.grey.withOpacity(.5),
                                  color: Colors.green[600],
                                  value: .12,
                                  strokeWidth: 7,
                                ),
                              ),
                            ),
                          ],
                        ),
                        )
                    ],
                  )
              )
            ],
           ),
              Padding(
                padding: const EdgeInsets.only(left:20,top:20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("AQI-Sangat Baik",style: TextStyle(color: Color(0xff201C1C),fontSize: 14,fontWeight: FontWeight.w600),),
                    Padding(
                      padding: const EdgeInsets.only(top: 10),
                      child: Container(
                        width: 253,
                        height: 70,
                        child: Text("Kualitas udara di daerahmu untuk saat ini sangat baik.Tidak ada pencearan udara yang menyebabkan berbagai penyakit.",style: TextStyle(color: Color(0xff201C1C),fontSize: 13,fontWeight: FontWeight.w400),)),
                    )
                  ],
                ),
              )
         

        ],
      ),
    );
  }
}
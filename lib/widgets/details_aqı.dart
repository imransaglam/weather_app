import 'package:flutter/cupertino.dart';
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
      height: 109,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: Color(0xffFAFAFA),
      ),
      child: Row(
        children: [
          Stack(
            children: [
              Image.asset("assets/images/Group_54.png"),
              Positioned(
                top:25,
                left: 25,
                child: Image.asset("assets/images/12.png")),
              ]),
              Column(
                children: [
                  Text("AQI-Sangat Baik"),
                  Container(
                    width: 225,
                    height: 70,
                    child: Text("Kualitas udara di daerahmu untuk saat ini sangat baik.Tidak ada pencearan udara yang menyebabkan berbagai penyakit."))
                ],
              )
         

        ],
      ),
    );
  }
}
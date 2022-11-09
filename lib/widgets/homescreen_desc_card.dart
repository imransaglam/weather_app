import 'package:flutter/cupertino.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class DescriptionCard extends StatefulWidget {
  const DescriptionCard({super.key});

  @override
  State<DescriptionCard> createState() => _DescriptionCardState();
}

class _DescriptionCardState extends State<DescriptionCard> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10),
      child: Container(
        width: double.infinity,
        height: 86,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/Group_60.png"),
            fit: BoxFit.cover
            )
        ),
        child:  Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(top:8,bottom: 8,left:25),
              child: Image.asset("assets/images/heavy_showers_line.png"),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 15,left: 15),
                  child: Container(
                    width: 186,
                    height: 34,
                    child: Text("Cuaca esok hari kemıngkinan akan terjadi hujann di siang hari",style: TextStyle(color: Color(0xff201C1C),fontSize: 14,fontWeight: FontWeight.w600),)),
                ),
                  Padding(
                    padding: const EdgeInsets.only(top: 6,left: 15),
                    child: Container(
                    width: 158,
                    height: 16,
                    child: Text("Jangan lupa bawa payung ya",style: TextStyle(color: Color(0xff201C1C),fontSize: 13,fontWeight: FontWeight.w400))),
                  ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
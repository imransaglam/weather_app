import 'package:flutter/cupertino.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class HomeText extends StatefulWidget {
  const HomeText({super.key});

  @override
  State<HomeText> createState() => _HomeTextState();
}

class _HomeTextState extends State<HomeText> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20,left:3,bottom: 8),
      child: Text("Cuaca Per Jam",style: TextStyle(fontSize: 20,fontWeight:FontWeight.w500),),
    );
  }
}
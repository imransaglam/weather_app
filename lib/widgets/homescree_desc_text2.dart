import 'package:flutter/cupertino.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class HomeText2 extends StatefulWidget {
  const HomeText2({super.key});

  @override
  State<HomeText2> createState() => _HomeText2State();
}

class _HomeText2State extends State<HomeText2> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20,left:3,bottom: 8),
      child: Text("Harian",style: TextStyle(fontSize: 20,fontWeight:FontWeight.w500),),
    );
  }
}
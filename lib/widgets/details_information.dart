import 'package:flutter/cupertino.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class DetailsInformation extends StatefulWidget {
  const DetailsInformation({super.key});

  @override
  State<DetailsInformation> createState() => _DetailsInformationState();
}

class _DetailsInformationState extends State<DetailsInformation> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20,left:3,bottom: 8),
      child: Text("Detail Informasi",style: TextStyle(fontSize: 20,fontWeight:FontWeight.w500),),
    );
  }
}
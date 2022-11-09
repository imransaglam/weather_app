import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class HomeDropDown extends StatefulWidget {
  const HomeDropDown({super.key});

  @override
  State<HomeDropDown> createState() => _HomeDropDownState();
}

class _HomeDropDownState extends State<HomeDropDown> {
 List<String> list = <String>['Tanjungsiang,Subang', 'Two', 'Three', 'Four'];
 String dropdownValue = 'Tanjungsiang,Subang';
  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(
      value: dropdownValue,
      icon: Image.asset("assets/images/arrow_down.png"),
      iconSize: 24,
      //alignment: Alignment.center,
      underline: Container(
        height: 0,
        //color: Colors.white,
      ),
      style: const TextStyle(color:Color(0xff201C1C),fontWeight:FontWeight.w500,fontSize: 15 ),
     
      onChanged: (String? value) {
        // This is called when the user selects an item.
        setState(() {
          dropdownValue = value!;
        });
      },
      items: list.map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
    );
  }
}
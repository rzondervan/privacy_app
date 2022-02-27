import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
//import 'package:flutter/widgets.dart';

class MySettings extends StatefulWidget {
  MySettings({Key? key}) : super(key: key);
//  int segmentedControlGroupValue = 0;

  @override
  State createState() => MySettingsState();
}

class MySettingsState extends State<MySettings> {
  int? segmentedControlGroupValue = 0;
  final Map<int, Widget> myTabs = const <int, Widget>{
    0: Text("School"),
    1: Text("Kinderopvang")
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CupertinoSlidingSegmentedControl(
          groupValue: segmentedControlGroupValue,
          children: myTabs,
          onValueChanged: (groupValue) {
            setState(() {
              print('onValueChange');
              print(groupValue);
              print(groupValue.runtimeType);
              //segmentedControlGroupValue = groupValue;

              //segmentedControlGroupValue = i;
            });
          }),
    );
  }
}

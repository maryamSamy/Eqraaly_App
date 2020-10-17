import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'sliding_up.dart';


void main() => runApp(MyApp1());

class MyApp1 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyApp1State();
  }
}

class _MyApp1State extends State<MyApp1> {
  bool showPerformance = false;

  onSettingCallback() {
    setState(() {
      showPerformance = !showPerformance;
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      showPerformanceOverlay: showPerformance,
      home: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          return
            MyHomePage(
              onSetting: onSettingCallback ,
            );
        },
      ),
    );
  }
}
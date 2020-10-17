
import 'dart:async';
import 'package:flutter/material.dart';
import 'sign_up.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
        Duration(seconds: 4),
            () => Navigator.of(context).pushReplacement(MaterialPageRoute(
            builder: (BuildContext context) => FirstPage())));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Container(
          height: 120,
          width: 120,
          decoration: BoxDecoration(
            image: DecorationImage(image: NetworkImage('https://lh3.googleusercontent.com/qgCHmSPs4keQzpdywNohuDkalXnZhNC9geCqrCD7jNweVSHX1aDAlabykdoJoVlHFg')
            ),
          ),
        ),
      ),
    );
  }
}
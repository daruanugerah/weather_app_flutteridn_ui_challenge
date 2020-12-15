import 'dart:async';

import 'package:flutter/material.dart';
import 'package:wheaterapp_ui_challenge/home_page.dart';
import 'package:wheaterapp_ui_challenge/style.dart';

class SplashPage extends StatefulWidget {
  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  void navigationPage() {
    Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => HomePage(),
        ));
  }

  startTime() async {
    var _duration = new Duration(seconds: 2);
    return new Timer(_duration, navigationPage);
  }

  @override
  void initState() {
    super.initState();
    startTime();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: mainColor,
      body: Center(
        child: Container(
          child: Image(
            image: AssetImage("assets/images/logo.png"),
            fit: BoxFit.contain,
          ),
        ),
      ),
    );
  }
}

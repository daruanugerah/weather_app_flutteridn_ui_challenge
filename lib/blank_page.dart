import 'package:after_layout/after_layout.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:wheaterapp_ui_challenge/splash_page.dart';

import 'onboarding_page.dart';

class BlankPage extends StatefulWidget {
  @override
  _BlankPageState createState() => _BlankPageState();
}

class _BlankPageState extends State<BlankPage>
    with AfterLayoutMixin<BlankPage> {
  Future checkFirstSeen() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    bool _seen = (prefs.getBool('seen') ?? false);

    if (_seen) {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => SplashPage(),
        ),
      );
    } else {
      await prefs.setBool('seen', true);
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => OnBoardingPage(),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container();
  }

  @override
  void afterFirstLayout(BuildContext context) {
    checkFirstSeen();
  }
}

import 'dart:async';

import 'package:after_layout/after_layout.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class OnboardingCheck extends StatefulWidget {
  @override
  OnboardingCheckState createState() => new OnboardingCheckState();
}

class OnboardingCheckState extends State<OnboardingCheck>
    with AfterLayoutMixin<OnboardingCheck> {
  Future checkFirstSeen() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    bool _seen = (prefs.getBool('seen') ?? false);

    if (_seen) {
      Navigator.pushReplacementNamed(context, '/Splash');
    } else {
      await prefs.setBool('seen', true);
      Navigator.pushReplacementNamed(context, '/OnBoardingScreen');
    }
  }

  @override
  void afterFirstLayout(BuildContext context) => checkFirstSeen();

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Scaffold(),
    );
  }
}

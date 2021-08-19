import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:markets/utills/SizeConfig.dart';

import 'splash.dart';

class SplashMain extends StatefulWidget {
  const SplashMain({Key key}) : super(key: key);

  @override
  _SplashMainState createState() => _SplashMainState();
}

class _SplashMainState extends State<SplashMain> {
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 2)).then((value) {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) {
            return Splash();
          },
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.fill,
            image: AssetImage('assets/splash_screen/splash.png'),
          ),
        ),
      ),
    );
  }
}

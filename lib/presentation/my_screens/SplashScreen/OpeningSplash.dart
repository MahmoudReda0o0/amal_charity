import 'package:amal_charity/constants/my_colors.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';

import '../../../constants/constantValues.dart';
import '../Login/Login.dart';

class OpeningSplash extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      backgroundColor: PublicColor.one,
      curve: Curves.bounceOut,
      duration:2000,
      splashIconSize:mediaH*0.44,
      splash: Container(
        height: mediaH*0.8,
        width: mediaW*0.85,
        //color: Colors.yellow,
        child: Image(
          fit: BoxFit.fill,
          image: AssetImage('assets/images/logo.png'),
        ),
      ),
      nextScreen: Login(),
    );
  }
}

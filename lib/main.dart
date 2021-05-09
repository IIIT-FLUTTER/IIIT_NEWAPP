import 'package:flutter/material.dart';
import 'package:iiit_skeleton/screens/home_screen.dart';

import 'Login_Page/Body.dart';

import 'Login_Page/Second_Page.dart';
import 'Login_Page/custom_splash.dart';

final ThemeData _appTheme = _buildAppTheme();

ThemeData _buildAppTheme() {
  final ThemeData base = ThemeData.light();
  return base.copyWith(
    brightness: Brightness.light,
    primaryColor: Colors.yellow,
    buttonColor: Colors.orange,
    scaffoldBackgroundColor: Colors.white,
    textTheme: text(base.textTheme),
  );
}

TextTheme text(TextTheme base) {
  return base.copyWith(
    headline1: base.headline1.copyWith(
      backgroundColor: Colors.pink,
    ),
    bodyText1: base.bodyText1.copyWith(
      color: Colors.black87,
    ),
  );
}

void main() {
  Function duringSplash = () {
    print('Something background process');
    int a = 123 + 23;
    print(a);

    if (a > 100)
      return 1;
    else
      return 2;
  };

  Map<int, Widget> op = {1: second(), 2: second()};

  runApp(
    MaterialApp(
      home: CustomSplash(
        imagePath: 'images/Login_Page/IIIT Sonepat Logo.png',
        backGroundColor: Colors.white,
        // backGroundColor: Color(0xfffc6042),
        animationEffect: 'zoom-in',
        logoSize: 200,
        home: HomeScreen(),
        customFunction: duringSplash,
        duration: 4000,
        type: CustomSplashType.StaticDuration,
        outputAndHome: op,
      ),
    ),
  );
}

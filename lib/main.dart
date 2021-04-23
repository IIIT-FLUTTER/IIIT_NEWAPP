import 'package:flutter/material.dart';
import 'Login_Page/Body.dart';

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
  runApp(MaterialApp(
    // theme: _appTheme,
    // debugShowCheckedModeBanner: false,
    home: LoginPage(),
  ));
}

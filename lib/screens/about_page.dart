import 'package:flutter/material.dart';

class AboutPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backwardsCompatibility: true,
      ),
      body: Center(
        child: Text(
          'About Us/Add info about clubs',
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 50.0,
          ),
        ),
      ),
    );
  }
}

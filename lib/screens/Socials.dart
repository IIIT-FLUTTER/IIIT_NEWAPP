import 'package:flutter/material.dart';

class SocialsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backwardsCompatibility: true,
        title: Text('Socials Page'),
      ),
      body: Center(
        child: Text(
          'Follow karo warna Placement nahi milegi',
          style: TextStyle(
            fontSize: 25.0,
          ),
        ),
      ),
    );
  }
}

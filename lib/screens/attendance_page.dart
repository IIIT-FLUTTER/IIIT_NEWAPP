import 'package:flutter/material.dart';

class AttendancePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backwardsCompatibility: true,
      ),
      body: Center(
        child: Text(
          'Ye Bhi Bana Do',
          style: TextStyle(
            fontSize: 50.0,
          ),
        ),
      ),
    );
  }
}

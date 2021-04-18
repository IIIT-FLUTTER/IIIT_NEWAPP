import 'package:flutter/material.dart';

class Line extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 16.0,
        vertical: 8.0,
      ),
      child: Container(
        height: 0.5,
        color: Colors.grey.shade900,
      ),
    );
  }
}

import 'package:flutter/material.dart';

class Subject extends StatelessWidget {
  Subject({this.address, this.subjectName, this.onPress});
  final String subjectName;
  final String address;
  final Function onPress;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        padding: const EdgeInsets.all(8),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            CircleAvatar(
              radius: 40,
              backgroundImage: AssetImage(address),
            ),
            Flexible(
              child: Stack(
                children: [
                  Text(
                    subjectName,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 15.0,
                      fontFamily: 'Ubuntu',
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 50.0,
                  ),
                  Text(
                    subjectName,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      foreground: Paint()
                        ..style = PaintingStyle.stroke
                        ..strokeWidth = 0.2
                        ..color = Colors.black,
                      fontSize: 15.0,
                      fontFamily: 'Ubuntu',
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

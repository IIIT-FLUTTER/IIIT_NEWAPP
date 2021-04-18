import 'package:flutter/material.dart';
import 'package:iiit_skeleton/models/constants.dart';

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
          children: [
            CircleAvatar(
              radius: SizeConfig.blockSizeVertical * 6.0,
              backgroundImage: AssetImage(address),
            ),
            Text(
              subjectName,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 15.0,
                fontFamily: 'Ubuntu',
                fontWeight: FontWeight.bold,
              ),
            )
          ],
        ),
      ),
    );
  }
}

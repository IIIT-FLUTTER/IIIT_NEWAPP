import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class FacultyRight extends StatelessWidget {
  FacultyRight({this.image});
  final String image;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120,
      margin: EdgeInsets.symmetric(
        vertical: 16,
        horizontal: 24,
      ),
      child: Stack(
        children: [
          Container(
            height: 124,
            margin: EdgeInsets.only(right: 46),
            decoration: BoxDecoration(
              color: Colors.white,
              shape: BoxShape.rectangle,
              borderRadius: BorderRadius.circular(8),
              boxShadow: [
                BoxShadow(
                  color: Colors.black12,
                  blurRadius: 10,
                  offset: Offset(0, 10),
                ),
              ],
            ),
          ),
          Container(
              margin: new EdgeInsets.symmetric(vertical: 16.0),
              alignment: FractionalOffset.centerRight,
              child: CircleAvatar(
                radius: 50,
                backgroundImage: AssetImage(image),
              )),
        ],
      ),
    );
  }
}

class FacultyLeft extends StatelessWidget {
  FacultyLeft({this.image});
  final String image;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120,
      margin: EdgeInsets.symmetric(
        vertical: 16,
        horizontal: 24,
      ),
      child: Stack(
        children: [
          Container(
            height: 124,
            margin: EdgeInsets.only(left: 46),
            decoration: BoxDecoration(
              color: Colors.white,
              shape: BoxShape.rectangle,
              borderRadius: BorderRadius.circular(8),
              boxShadow: [
                BoxShadow(
                  color: Colors.black12,
                  blurRadius: 10,
                  offset: Offset(0, 10),
                ),
              ],
            ),
          ),
          Container(
            margin: new EdgeInsets.symmetric(vertical: 16.0),
            alignment: FractionalOffset.centerLeft,
            child: Row(
              children: [
                CircleAvatar(
                  radius: 50,
                  backgroundImage: AssetImage(image),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:iiit_skeleton/Faculty/facultyIcon.dart';

class FacultyPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          color: Color(0xFF333366),
          child: Expanded(
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                children: [
                  FacultyLeft(
                    image: "images/backs.jpg",
                  ),
                  FacultyRight(
                    image: "images/backs.jpg",
                  ),
                  FacultyLeft(
                    image: "images/backs.jpg",
                  ),
                  FacultyRight(
                    image: "images/backs.jpg",
                  ),
                  FacultyLeft(
                    image: "images/backs.jpg",
                  ),
                  FacultyRight(
                    image: "images/backs.jpg",
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:iiit_skeleton/Login_Page/Body.dart';
import 'package:iiit_skeleton/models/constants.dart';
import 'package:iiit_skeleton/screens/Faculty.dart';
import 'package:iiit_skeleton/screens/attendance_page.dart';
import 'package:iiit_skeleton/screens/meet.dart';
import 'package:iiit_skeleton/screens/news.dart';
import 'package:iiit_skeleton/widgets/subjectIcon.dart';
import 'about_page.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:iiit_skeleton/homepage/subjectsSlides.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyApp(),
    );
  }
}

class MyApp extends StatelessWidget {
  String userName = "Aditya Chaudhary";
  String yearOfStudent = "First";
  String greetingMessage() {
    var timeNow = DateTime.now().hour;

    if (timeNow <= 12) {
      return 'Good Morning';
    } else if ((timeNow > 12) && (timeNow <= 16)) {
      return 'Good Afternoon';
    } else {
      return 'Good Evening';
    }
  }

  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey();
  @override
  Widget build(BuildContext context) {
    String greeting = greetingMessage();
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    SizeConfig().init(context);
    return SafeArea(
      child: Scaffold(
        key: _scaffoldKey,
        drawer: Drawer(
          child: ListView(
            children: [
              DrawerHeader(
                child: Center(
                  child: Text('IIIT SONEPAT'),
                ),
                decoration: BoxDecoration(
                  color: Colors.blue,
                ),
              ),
              ListTile(
                title: Text('About'),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => AboutPage(),
                    ),
                  );
                },
              ),
              ListTile(
                title: Text('Attendance'),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => AttendancePage(),
                    ),
                  );
                },
              ),
              ListTile(
                title: Text('Faculty'),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => FacultyPage(),
                    ),
                  );
                },
              ),
              ListTile(
                title: Text('Meeting'),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Meeting(),
                    ),
                  );
                },
              ),
              ListTile(
                title: Text('LogOut'),
                onTap: () {
                  showDialog(
                    // barrierColor: Colors.white,
                    context: context,
                    builder: (context) {
                      return AlertDialog(
                        // Retrieve the text the that user has entered by using the
                        // TextEditingController.
                        content: Text(
                          "Do you really want to log out?",
                          style: TextStyle(
                            fontSize: 20.0,
                            fontWeight: FontWeight.w900,
                            color: Colors.black,
                          ),
                        ),

                        actions: <Widget>[
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              TextButton(
                                onPressed: () => Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => LoginPage(),
                                  ),
                                ).then((value) {
                                  if (value != null) {
                                    final SnackBar snackbar = SnackBar(
                                      content: Text(
                                          "You have been successfully Logged Out"),
                                      backgroundColor: Colors.lightGreenAccent,
                                    );
                                    _scaffoldKey.currentState
                                        .showSnackBar(snackbar);
                                  }
                                }),
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    "Yes",
                                    style: TextStyle(
                                        fontSize: 24.0,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                style: ButtonStyle(
                                  elevation: MaterialStateProperty.all(0.0),
                                  textStyle: MaterialStateProperty.all(
                                    TextStyle(
                                      letterSpacing: 1.0,
                                      fontFamily: "MonoLisa",
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 80.0,
                              ),
                              TextButton(
                                onPressed: () => Navigator.pop(context, 'No'),
                                child: Padding(
                                  padding: const EdgeInsets.only(right: 50.0),
                                  child: Text(
                                    "No",
                                    style: TextStyle(
                                        fontSize: 24.0,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                style: ButtonStyle(
                                    elevation: MaterialStateProperty.all(0.0),
                                    textStyle:
                                        MaterialStateProperty.all(TextStyle(
                                      letterSpacing: 1.0,
                                      fontFamily: "MonoLisa",
                                    ))),
                              ),
                            ],
                          )
                        ],
                        backgroundColor: Colors.white,
                      );
                    },
                  );

                  // Navigator.push(
                  //   context,
                  //   MaterialPageRoute(
                  //     builder: (context) => LoginPage(),
                  //   ),
                  // );
                },
              ),
            ],
          ),
        ),
        body: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                children: [
                  Image.asset("images/header.png"),
                  Positioned(
                    child: Container(
                      width: width,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          IconButton(
                              color: Colors.white,
                              icon: Icon(Icons.sort),
                              onPressed: () {
                                _scaffoldKey.currentState.openDrawer();
                              }),
                          Column(
                            children: [
                              Column(
                                children: [
                                  SizedBox(
                                    height: height / 40,
                                  ),
                                  Text(
                                    "$greeting",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 35.0,
                                      fontFamily: 'Questrial',
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          CircleAvatar(
                            radius: 25.0,
                            backgroundImage: AssetImage('images/aditya.png'),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    child: Column(
                      children: [
                        SizedBox(
                          height: 70.0,
                        ),
                        Row(
                          children: [
                            SizedBox(
                              width: width / 20,
                            ),
                            Text(
                              "$userName",
                              style: TextStyle(
                                color: Colors.white,
                                textBaseline: TextBaseline.alphabetic,
                                fontSize: 25.0,
                                fontFamily: 'Questrial',
                                fontWeight: FontWeight.w900,
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            SizedBox(
                              width: width / 20,
                            ),
                            Text(
                              "$yearOfStudent year",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20.0,
                                fontFamily: 'Questrial',
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                    bottom: height / 15,
                    left: width / 20,
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) {
                              return AttendancePage();
                            },
                          ),
                        );
                      },
                      child: CircleAvatar(
                        radius: 30.0,
                        backgroundImage: AssetImage('images/attendance.jpg'),
                      ),
                    ),
                  )
                ],
              ),
              Expanded(
                child: ListView(
                  children: [
                    SubjectButton(
                      height: height,
                      width: width,
                      subject: "Communication Skills",
                      color1: Colors.deepPurple,
                      color2: Colors.lightBlueAccent,
                      address: "images/cs.png",
                    ),
                    SubjectButton(
                      height: height,
                      width: width,
                      subject: "Data Structures",
                      color1: Colors.black,
                      color2: Colors.black12,
                      address: "images/ds.png",
                    ),
                    SubjectButton(
                      height: height,
                      width: width,
                      subject: "Web Designing",
                      color1: Colors.lightBlueAccent,
                      color2: Colors.lightGreen,
                      address: "images/wd.png",
                    ),
                    SubjectButton(
                      height: height,
                      width: width,
                      subject: "Mathematics",
                      color1: Colors.red,
                      color2: Colors.yellow,
                      address: "images/mathFinal.jpg",
                    ),
                    SubjectButton(
                      height: height,
                      width: width,
                      subject: "Application Programming",
                      color1: Color(0xFFFC7170),
                      color2: Color(0xFFEFB8B0),
                      address: "images/ad.png",
                    ),
                    SubjectButton(
                      height: height,
                      width: width,
                      subject: "Digital Electronics",
                      address: "images/de.png",
                      color1: Colors.yellow,
                      color2: Colors.orange,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

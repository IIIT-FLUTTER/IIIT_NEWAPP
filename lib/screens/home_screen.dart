import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:iiit_skeleton/homepage/subjectsSlides.dart';
import 'package:iiit_skeleton/models/constants.dart';
import 'package:iiit_skeleton/screens/attendance_page.dart';
import 'package:iiit_skeleton/screens/drawerScreen.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Stack(
          children: [
            DrawerScreen(),
            MyApp(),
          ],
        ),
      ),
    );
  }
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey();
  String userName = "Aditya Chaudhary";
  double xOffset = 0;
  double yOffset = 0;
  double scalefactor = 1;
  bool isDrawerOpen = false;
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

  @override
  Widget build(BuildContext context) {
    String greeting = greetingMessage();
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    SizeConfig().init(context);
    return AnimatedContainer(
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          //BoxShadow
          BoxShadow(
            color: Colors.grey,
            offset: const Offset(-5, -5),
            blurRadius: 50,
            spreadRadius: 0.1,
          ),
          //BoxShadow
        ],
      ),
      transform: Matrix4.translationValues(xOffset, yOffset, 0)
        ..scale(scalefactor)
        ..rotateY(isDrawerOpen ? -0.5 : 0),
      duration: Duration(milliseconds: 200),
      child: SafeArea(
        child: Scaffold(
          key: _scaffoldKey,
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
                        child: Expanded(
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              isDrawerOpen
                                  ? IconButton(
                                      icon: Icon(
                                        Icons.arrow_back,
                                        color: Colors.white,
                                      ),
                                      onPressed: () {
                                        setState(() {
                                          xOffset = 0;
                                          yOffset = 0;
                                          scalefactor = 1;
                                          isDrawerOpen = false;
                                        });
                                      })
                                  : IconButton(
                                      icon: Icon(
                                        Icons.menu,
                                        color: Colors.white,
                                      ),
                                      onPressed: () {
                                        setState(() {
                                          xOffset = 180;
                                          yOffset = 70;
                                          scalefactor = 0.8;
                                          isDrawerOpen = true;
                                        });
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
                                backgroundImage:
                                    AssetImage('images/aditya.png'),
                              ),
                            ],
                          ),
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
      ),
    );
  }
}

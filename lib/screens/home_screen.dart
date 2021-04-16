import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:iiit_skeleton/screens/Faculty.dart';
import 'package:iiit_skeleton/screens/attendance_page.dart';
import 'package:iiit_skeleton/screens/news.dart';
import 'about_page.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:iiit_skeleton/widgets/slider.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyApp(),
    );
  }
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _selectedIndex = 0;
  GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF4F9F9),
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
                    builder: (context) => AttendancePage(),
                  ),
                );
              },
            ),
          ],
        ),
      ),
      body: SafeArea(
        child: Container(
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.only(right: 10, top: 05.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                        icon: Icon(Icons.sort),
                        onPressed: () {
                          _scaffoldKey.currentState.openDrawer();
                        }),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(
                          height: 5.0,
                        ),
                        Text(
                          "Welcome,",
                          style: TextStyle(
                            fontSize: 20.0,
                            fontFamily: 'Ubuntu',
                            fontWeight: FontWeight.w300,
                          ),
                        ),
                        Text(
                          "Aditya Chaudhary",
                          style: TextStyle(
                            textBaseline: TextBaseline.alphabetic,
                            fontSize: 25.0,
                            fontFamily: 'Ubuntu',
                            fontWeight: FontWeight.w900,
                          ),
                        ),
                      ],
                    ),
                    CircleAvatar(
                      radius: 35.0,
                      backgroundImage: AssetImage('images/1.png'),
                    ),
                  ],
                ),
              ),
              Container(
                height: 200.0,
                child: Column(
                  children: [
                    CarouselSlider(
                      items: [
                        CarouselChild(
                          address: 'images/l.png',
                          onPress: () {
                            setState(() {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => LatestNewsPage(),
                                ),
                              );
                            });
                          },
                        ),
                        CarouselChild(
                          address: 'images/8.jpg',
                          onPress: () {
                            setState(() {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => AboutPage(),
                                ),
                              );
                            });
                          },
                        ),
                        CarouselChild(
                          address: 'images/10.png',
                          onPress: () {
                            setState(() {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => FacultyPage(),
                                ),
                              );
                            });
                          },
                        ),
                      ],
                      options: CarouselOptions(
                        enlargeCenterPage: true,
                        height: 180.0,
                        aspectRatio: 16 / 9,
                        enableInfiniteScroll: true,
                        viewportFraction: 0.8,
                      ),
                    )
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

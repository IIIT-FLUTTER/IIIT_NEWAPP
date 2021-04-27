import 'package:flutter/material.dart';
import 'package:iiit_skeleton/Login_Page/Body.dart';
import 'package:iiit_skeleton/screens/home_screen.dart';
import 'dart:ui' as ui;
import 'TextField.dart';

class Forget_Password extends StatelessWidget {
  @override
  final TextEditingController controllerRoll;
  final TextEditingController controllerPhone;
  final TextEditingController controllerName;

  Forget_Password(
      this.controllerRoll, this.controllerPhone, this.controllerName);

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orangeAccent,
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          // generateBlurredImage(),
          Container(
            alignment: Alignment.topCenter,
            child: Padding(
              padding: const EdgeInsets.only(
                top: 80.0,
                left: 30.0,
                right: 30.0,
              ),
              child: Column(
                children: <Widget>[
                  TextMain(
                    controller: controllerRoll,
                    obscure: false,
                    color: Colors.black,
                    fw: FontWeight.bold,
                    fontsize: 15.0,
                    prefix: Icons.assignment_ind,
                    suffix: null,
                    hint: "Enter your Roll no",
                    input: TextInputType.number,
                    label: "Roll No",
                  ),
                  SizedBox(
                    height: 9.0,
                  ),
                  TextMain(
                    controller: controllerName,
                    obscure: false,
                    color: Colors.black,
                    fw: FontWeight.bold,
                    fontsize: 15.0,
                    prefix: Icons.account_circle,
                    suffix: null,
                    hint: "Enter your name",
                    input: TextInputType.name,
                    label: "Student's Name",
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      RaisedButton(
                        elevation: 7.0,
                        child: Text(
                          "Proceed",
                          style: TextStyle(
                            fontFamily: 'MonoLisa',
                            fontSize: 15.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => col(context),
                            ),
                          );
                        },
                      ),
                      RaisedButton(
                        elevation: 7.0,
                        child: Text(
                          "Cancel",
                          style: TextStyle(
                            fontFamily: 'MonoLisa',
                            fontSize: 15.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => LoginPage(),
                            ),
                          );
                        },
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Scaffold col(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orangeAccent,
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          // generateBlurredImage(),
          Container(
            child: Padding(
              padding: const EdgeInsets.only(
                top: 80.0,
                left: 30.0,
                right: 30.0,
              ),
              child: Column(
                children: <Widget>[
                  TextMain(
                    controller: controllerPhone,
                    obscure: false,
                    color: Colors.black,
                    fw: FontWeight.bold,
                    fontsize: 15.0,
                    prefix: Icons.phone,
                    suffix: null,
                    hint: "Enter your Registered Phone number",
                    input: TextInputType.number,
                    label: "Mobile Number",
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      RaisedButton(
                        elevation: 7.0,
                        child: Text(
                          "Proceed",
                          style: TextStyle(
                            fontFamily: 'MonoLisa',
                            fontSize: 15.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => HomeScreen(),
                            ),
                          );
                        },
                      ),
                      RaisedButton(
                        elevation: 7.0,
                        child: Text(
                          "Cancel",
                          style: TextStyle(
                            fontFamily: 'MonoLisa',
                            fontSize: 15.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => LoginPage(),
                            ),
                          );
                        },
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  // Widget generateBlurredImage() {
  //   return new Container(
  //     decoration: new BoxDecoration(
  //       image: new DecorationImage(
  //         image: new AssetImage('images/Login_Page/back-light.jpg'),
  //         fit: BoxFit.cover,
  //       ),
  //     ),
  //     //I blurred the parent container to blur background image, you can get rid of this part
  //     child: new BackdropFilter(
  //       filter: new ui.ImageFilter.blur(sigmaX: 5.0, sigmaY: 5.0),
  //       child: new Container(
  //         //you can change opacity with color here(I used black) for background.
  //         decoration: new BoxDecoration(color: Colors.black.withOpacity(0.0)),
  //       ),
  //     ),
  //   );
  // }
}

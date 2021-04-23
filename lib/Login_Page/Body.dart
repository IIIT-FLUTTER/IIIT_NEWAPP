import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:iiit_skeleton/Login_Page/TextField.dart';
import 'package:iiit_skeleton/Login_Page/forget_password.dart';
import 'package:iiit_skeleton/screens/home_screen.dart';
import 'dart:ui' as ui;

class LoginPage extends StatelessWidget {
  final _scaffoldKey = GlobalKey<ScaffoldState>();
  final TextEditingController emailController = new TextEditingController();
  final TextEditingController passwordController = new TextEditingController();
  final TextEditingController phoneController = new TextEditingController();
  final TextEditingController nameController = new TextEditingController();
  final TextEditingController rollController = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      key: _scaffoldKey,
      backgroundColor: Colors.white,
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          generateBluredImage(),
          Container(
            alignment: Alignment.center,
            child: ListView(
              children: <Widget>[
                Container(
                  child: Column(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(
                          top: 50.0,
                          bottom: 40.0,
                        ),
                        child: Container(
                          decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                color: Colors.white.withOpacity(0.0),
                                spreadRadius: 20,
                                blurRadius: 0,
                                offset:
                                    Offset(0, 7), // changes position of shadow
                              ),
                            ],
                          ),
                          child: Center(
                            child: Image.asset(
                              "images/Login_Page/IIIT Sonepat Logo.png",
                              width: 200,
                              height: 200,
                              colorBlendMode: BlendMode.colorBurn,
                            ),
                          ),
                        ),
                      ),
                      Text(
                        "Sign In",
                        style: TextStyle(
                          fontSize: 25.0,
                          color: Colors.white,
                          fontWeight: FontWeight.w900,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          margin: EdgeInsets.only(top: 15.0),
                          padding: EdgeInsets.all(10.0),
                          decoration: BoxDecoration(
                            color: Colors.transparent,
                            // border: Border.all(
                            //   // color: Colors.blueGrey.shade100,
                            //   style: BorderStyle.solid,
                            // ),
                            borderRadius: BorderRadius.circular(12.0),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              TextMain(
                                controller: emailController,
                                obscure: false,
                                color: Colors.black,
                                fw: FontWeight.bold,
                                fontsize: 15.0,
                                prefix: Icons.mail_outline,
                                suffix: null,
                                hint: "name.rollno@iiitsonepat.ac.in",
                                input: TextInputType.emailAddress,
                                label: "Email Address",
                              ),
                              SizedBox(
                                height: 9.0,
                              ),
                              TextMain(
                                controller: passwordController,
                                obscure: true,
                                color: Colors.black,
                                fw: FontWeight.bold,
                                fontsize: 15.0,
                                prefix: Icons.lock_outline_rounded,
                                suffix: Icons.visibility,
                                hint: "Enter your password",
                                input: null,
                                label: "Password",
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: height / 15,
                      ),
                      Center(
                        child: RaisedButton(
                          elevation: 6.0,
                          color: Colors.blueAccent,
                          child: Text(
                            "LogIn",
                            style: TextStyle(
                              fontSize: 17.0,
                              fontWeight: FontWeight.w900,
                            ),
                          ),
                          shape: BeveledRectangleBorder(
                            borderRadius: BorderRadius.all(
                              Radius.circular(10.0),
                            ),
                          ),
                          onPressed: () {
                            if (emailController.text.isEmpty ||
                                passwordController.text.isEmpty) {
                              showDialog(
                                context: context,
                                builder: (context) {
                                  return AlertDialog(
                                    // Retrieve the text the that user has entered by using the
                                    // TextEditingController.
                                    content: Text(
                                      "Fill the Required Fields",
                                      style: TextStyle(
                                        fontSize: 15.0,
                                        fontWeight: FontWeight.w900,
                                        color: Colors.black,
                                      ),
                                    ),
                                    backgroundColor: Colors.white70,
                                  );
                                },
                              );
                            } else
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => HomeScreen(),
                                ),
                              );
                          },
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 10.0),
                            child: InkWell(
                                child: Text(
                                  "Forgot Password?",
                                  style: TextStyle(
                                    color: Colors.deepOrangeAccent,
                                    fontWeight: FontWeight.w900,
                                  ),
                                ),
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => Forget_Password(
                                        rollController,
                                        phoneController,
                                        nameController,
                                      ),
                                    ),
                                  );
                                }),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget generateBluredImage() {
    return new Container(
      decoration: new BoxDecoration(
        image: new DecorationImage(
          image: new AssetImage('images/hupe.gif'),
          fit: BoxFit.cover,
        ),
      ),
      //I blured the parent container to blur background image, you can get rid of this part
      child: new BackdropFilter(
        filter: new ui.ImageFilter.blur(sigmaX: 3.0, sigmaY: 3.0),
        child: new Container(
          //you can change opacity with color here(I used black) for background.
          decoration: new BoxDecoration(color: Colors.black.withOpacity(0.2)),
        ),
      ),
    );
  }
}

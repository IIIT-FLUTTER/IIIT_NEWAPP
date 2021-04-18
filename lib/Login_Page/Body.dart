import 'package:flutter/material.dart';
import 'package:iiit_skeleton/Login_Page/Horizontal%20Line.dart';
import 'package:iiit_skeleton/screens/home_screen.dart';

class LoginPage extends StatelessWidget {
  final _scaffoldKey = GlobalKey<ScaffoldState>();
  TextEditingController emailController = new TextEditingController();
  TextEditingController passwordController = new TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      backgroundColor: Colors.white,
      body: Container(
        constraints: BoxConstraints.expand(),
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("images/Login_Page/Back.jpeg"),
            fit: BoxFit.cover,
            colorFilter: ColorFilter.mode(
                Colors.transparent.withOpacity(0.3), BlendMode.srcOver),
          ),
        ),
        alignment: Alignment.center,
        child: ListView(
          children: <Widget>[
            Container(
              child: Column(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 80.0,
                      bottom: 40.0,
                    ),
                    child: Center(
                      child: Image.asset(
                        "images/Login_Page/IIIT Sonepat Logo.png",
                        width: 200,
                        height: 200,
                        colorBlendMode: BlendMode.lighten,
                      ),
                    ),
                  ),
                  Text(
                    "Sign In",
                    style: TextStyle(
                      fontSize: 25.0,
                      color: Colors.cyan.shade400,
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      margin: EdgeInsets.only(top: 20.0),
                      padding: EdgeInsets.all(12.0),
                      decoration: BoxDecoration(
                        color: Colors.transparent,
                        border: Border.all(
                          color: Colors.blueGrey.shade100,
                          style: BorderStyle.solid,
                        ),
                        borderRadius: BorderRadius.circular(12.0),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          TextField(
                            controller: emailController,
                            keyboardType: TextInputType.emailAddress,
                            style: TextStyle(color: Colors.deepOrange),
                            decoration: InputDecoration(
                              hintText: "name.rollno@iiitsonepat.ac.in",
                              fillColor: Colors.orange,
                              prefixIcon: Icon(
                                Icons.mail_outline,
                                size: 25.0,
                                color: Colors.blueAccent,
                              ),
                              hintStyle: TextStyle(
                                fontSize: 16.0,
                                fontWeight: FontWeight.w900,
                                fontStyle: FontStyle.normal,
                              ),
                            ),
                          ),
                          TextField(
                            controller: passwordController,
                            obscureText: true,
                            style: TextStyle(
                              color: Colors.black87,
                              fontSize: 19.0,
                            ),
                            decoration: InputDecoration(
                              hintText: "********",
                              prefixIcon: Icon(
                                Icons.lock,
                                size: 25.0,
                                color: Colors.blueAccent,
                              ),
                              suffixIcon: Icon(
                                Icons.visibility,
                                size: 25.0,
                                color: Colors.blueAccent,
                              ),
                              hintStyle: TextStyle(
                                fontSize: 16.0,
                                fontWeight: FontWeight.w900,
                                fontStyle: FontStyle.normal,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Center(
                    child: RaisedButton(
                      elevation: 8.0,
                      color: Colors.green,
                      child: Text(
                        "LogIn",
                        style: TextStyle(
                          fontSize: 17.0,
                          fontWeight: FontWeight.w900,
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
                                    color: Colors.red,
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
                              color: Colors.red,
                              fontWeight: FontWeight.w900,
                            ),
                          ),
                          onTap: () {},
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          "Or Login With",
                          style: TextStyle(
                            fontSize: 16.0,
                            fontWeight: FontWeight.w900,
                            color: Colors.yellow,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 25.0,
                      vertical: 8.0,
                    ),
                    child: Container(
                      height: 0.5,
                      color: Colors.grey.shade900,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      FlatButton(
                        child: Image.asset(
                          "images/Login_Page/google.png",
                          fit: BoxFit.cover,
                          width: 30.0,
                          height: 30.0,
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
                      FlatButton(
                        child: Container(
                          height: 50,
                          width: 30,
                          child: Icon(
                            Icons.mail,
                            size: 40,
                            color: Colors.blueAccent,
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
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

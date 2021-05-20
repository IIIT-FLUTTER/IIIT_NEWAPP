import 'package:flutter/material.dart';
import 'dart:async';
import 'package:flutter/services.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:iiit_skeleton/Login_Page/AuthTextField.dart';
import 'package:iiit_skeleton/screens/home_screen.dart';


// Define a corresponding State class.
// This class holds the data related to the Form.
class Meeting extends StatelessWidget {
  // Create a text controller and use it to retrieve the current value
  // of the TextField.
  final myController = TextEditingController();
  static const platform = const MethodChannel('samples.flutter.dev/meet');
  Future<void> _getLevel(text) async {
       platform.invokeMethod('Meeting started',{"text":text});
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Meeting'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: TextField(
          controller: myController,
        ),
      ),
      floatingActionButton: FloatingActionButton(
        // When the user presses the button, show an alert dialog containing
        // the text that the user has entered into the text field.
        onPressed: () =>_getLevel(myController.text),

        child: Icon(Icons.text_fields),
      ),
    );
  }
}

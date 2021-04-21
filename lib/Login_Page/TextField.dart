import 'package:flutter/material.dart';

class textmain extends StatelessWidget {
  final TextEditingController controller;
  final bool obscure;
  final Color color;
  final FontWeight fw;
  final double fontsize;
  final IconData prefix;
  final IconData suffix;
  final String hint;
  final TextInputType input;
  final String label;

  textmain(this.controller, this.obscure, this.color, this.fw, this.fontsize,
      this.prefix, this.suffix, this.hint, this.input, this.label);

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      obscureText: obscure,
      style: TextStyle(
        color: color,
        fontWeight: fw,
        fontSize: fontsize,
        fontFamily: "MonoLisa",
      ),
      decoration: InputDecoration(
        labelText: label,
        labelStyle: TextStyle(
          fontSize: 17.0,
          fontWeight: FontWeight.bold,
          color: Colors.red,
        ),
        border: const OutlineInputBorder(
          gapPadding: 10.0,
          borderRadius: BorderRadius.all(
            Radius.circular(30.0),
          ),
          borderSide: BorderSide(
            color: Colors.purpleAccent,
            width: 10.0,
            style: BorderStyle.solid,
          ),
        ),
        focusedBorder: const OutlineInputBorder(
          gapPadding: 10.0,
          borderRadius: BorderRadius.all(
            Radius.circular(30.0),
          ),
          borderSide: BorderSide(
            color: Colors.purpleAccent,
            width: 3.0,
            style: BorderStyle.solid,
          ),
        ),
        hintText: hint,
        filled: true,
        fillColor: Colors.blue.shade50,
        prefixIcon: Icon(
          prefix,
          size: 25.0,
          color: Colors.blueAccent,
        ),
        suffixIcon: Icon(
          suffix,
          size: 25.0,
          color: Colors.blueAccent,
        ),
        hintStyle: TextStyle(
          color: Colors.grey,
          fontSize: 16.0,
          fontWeight: FontWeight.w900,
          fontStyle: FontStyle.italic,
          fontFamily: "MonoLisa",
        ),
      ),
    );
  }
}

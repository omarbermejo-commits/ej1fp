import 'package:flutter/material.dart';

class TextFieldCustom extends StatefulWidget {
  var hintText = '';
  bool obscureText = false;
  TextFieldCustom({super.key, required this.hintText, required this.obscureText});

  @override
  State<TextFieldCustom> createState() => _TextFieldCustomState();
}

class _TextFieldCustomState extends State<TextFieldCustom> {
  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: widget.obscureText,
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.white,
                focusColor: Colors.white,
                focusedBorder: OutlineInputBorder(
                  borderSide: const BorderSide(color: Colors.white, width: 2.0),
                  borderRadius: BorderRadius.circular(30),
                ),
                border: OutlineInputBorder(
                  borderSide: const BorderSide(color: Colors.white, width: 2.0),
                  borderRadius: BorderRadius.circular(30),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: const BorderSide(color: Colors.white, width: 2.0),
                  borderRadius: BorderRadius.circular(30),
                ),
                hintText: widget.hintText,
                hintStyle: const TextStyle(color: Colors.grey),
              ),
            );
  }
}
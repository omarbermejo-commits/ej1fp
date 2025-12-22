// ignore_for_file: file_names, must_be_immutable


import 'package:flutter/material.dart';

class TextCustom extends StatefulWidget {

   var contentText = '' ;

  TextCustom({super.key, required this.contentText});



  @override
  State<TextCustom> createState() => _TextCustomState();
}

class _TextCustomState extends State<TextCustom> {

  @override
  Widget build(BuildContext context) {
    // Esto es una ejemplo de un Widget que se puede reutilizar para un mejor manejo de estilos
    return Text(widget.contentText, style: TextStyle( fontWeight: FontWeight.bold, fontSize: 65));
  }
}
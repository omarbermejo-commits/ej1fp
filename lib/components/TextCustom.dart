import 'package:flutter/material.dart';

class TextCustom extends StatelessWidget {
  final String contentText;
  final double fontSize;
  final FontWeight fontWeight;
  final Color color;
  final TextAlign textAlign;

  const TextCustom({
    super.key,
    required this.contentText,
    this.fontSize = 25,
    this.fontWeight = FontWeight.bold,
    this.color = Colors.black,
    this.textAlign = TextAlign.start,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      contentText,
      textAlign: textAlign,
      style: TextStyle(
        fontSize: fontSize,
        fontWeight: fontWeight,
        color: color,
      ),
    );
  }
}

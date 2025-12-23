import 'package:flutter/material.dart';

class TextFieldCustom extends StatelessWidget {
  final String hint;
  final int maxLine;
  final int? maxLength;
  final bool isObscure;
  final Color? textFieldColor, hintFieldColor;
  final TextInputType? keyboardType;
  final double marginTop, marginBottom, marginLeft, marginRight;
  final TextEditingController? controller;
  final bool isReadOnly;
  final double? fontSize;
  final double? height;
  final String? Function(String?)? validator;

  const TextFieldCustom({
    super.key,
    required this.hint,
    required this.isObscure,
    this.maxLine = 1,
    this.maxLength,
    this.textFieldColor,
    this.hintFieldColor,
    this.keyboardType,
    this.marginTop = 0,
    this.marginBottom = 0,
    this.marginLeft = 0,
    this.marginRight = 0,
    this.controller,
    this.isReadOnly = false,
    this.fontSize,
    this.height,
    this.validator,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        top: marginTop,
        bottom: marginBottom,
        left: marginLeft,
        right: marginRight,
      ),
      child: SizedBox(
        height: height,
        child: TextFormField(
          controller: controller,
          obscureText: isObscure,
          maxLines: maxLine,
          maxLength: maxLength,
          keyboardType: keyboardType,
          readOnly: isReadOnly,
          validator: validator,
          style: TextStyle(fontSize: fontSize),
          decoration: InputDecoration(
            filled: true,
            fillColor: textFieldColor ?? Colors.white,
            hintText: hint,
            hintStyle: TextStyle(color: hintFieldColor ?? Colors.grey),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(30),
              borderSide: BorderSide.none,
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(30),
              borderSide: const BorderSide(color: Colors.white),
            ),
          ),
        ),
      ),
    );
  }
}

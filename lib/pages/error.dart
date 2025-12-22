import 'package:ej1fp/components/exportComponets.dart';
import 'package:flutter/material.dart';

class ErrorScreen extends StatelessWidget {
  const ErrorScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: 
      Center(
        child: Column(
          children: [
            TextCustom(contentText: 'Error al momento de procesar los datos.')
          ],
        ),
      )),
    );
  }
}
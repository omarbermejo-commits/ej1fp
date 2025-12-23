import 'package:ej1fp/components/exportComponets.dart';
import 'package:flutter/material.dart';

class ErrorScreen extends StatelessWidget {
  ErrorScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              TextCustom(
                contentText: 'Error al momento de procesar los datos.',
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, 'LoginScreen');
                },
                child: TextCustom(contentText: 'Regresar al Login'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:ej1fp/components/exportComponets.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
        child: Column(
          children: [
            // Todos estos son widgets personalizados con la detecccion de parametros.
          TextFieldCustom(hintText: 'Correo electronico', obscureText: false),
          TextFieldCustom(hintText: 'Constraseña', obscureText: true),
          TextFieldCustom(hintText: 'Confirmar constraseña', obscureText: true)

          ],
        ),
      )),
    );
  }
}
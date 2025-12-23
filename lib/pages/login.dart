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
      backgroundColor: Color(Color.fromARGB(255, 0, 108, 196).value),
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(9.0),
            child: Column(
              children: [
                TextCustom(
                  contentText: 'Iniciar Sesión',
                  fontSize: 30,
                  color: Colors.white,
                ),

                SizedBox(height: 20),
                // Todos estos son widgets personalizados con la detecccion de parametros.
                TextFieldCustom(
                  hint: 'Correo electrónico',
                  isObscure: false,
                  keyboardType: TextInputType.emailAddress,
                  marginLeft: 16,
                  marginRight: 16,
                  marginBottom: 16,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Campo obligatorio';
                    }
                    return null;
                  },
                ),
                TextFieldCustom(
                  hint: 'Contraseña',
                  isObscure: true,
                  marginLeft: 16,
                  marginRight: 16,
                  maxLength: 10,
                  marginBottom: 16,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Campo obligatorio';
                    }
                    return null;
                  },
                ),
                ElevatedButton(
                  onPressed: () {
                    // Validar credenciales y navegar a la pantalla principal
                    if (true) {
                      // Aquí iría la lógica de validación real

                      Navigator.pushNamed(context, 'HomeScreen');
                    }
                  },
                  child: const Text('Iniciar sesión'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

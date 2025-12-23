import 'package:ej1fp/exportpages.dart';
import 'package:flutter/material.dart';

// Esta es la clase donde se gestiona todo el control de rutas.
/* 
        Cuando la app se inicia, se le asigna un parametro este se define por un provaider o un gestion de cambios.
        Se valida atraves de una peticion HTTP la cual valida si el usuario esta loggueado o no. Una vez hecha esta validacion,
        se procede a redirigir hacia una pagina , sea "LoginScreen" o "HomeScreen", dependiendo el caso.
 */
class AppRoute {
  static const inicialRoute = 'home';
  static final menuOptions = <MenuOptions>{
    MenuOptions(
      route: 'HomeScreen',
      title: 'HomeScreen',
      screen: const HomeScreen(),
    ),
    MenuOptions(
      route: 'LoginScreen',
      title: 'LoginScreen',
      screen: const LoginScreen(),
    ),
  };

  static Map<String, Widget Function(BuildContext)> getMenuRoutes() {
    Map<String, Widget Function(BuildContext)> appRoutes = {};
    appRoutes.addAll({'home': (BuildContext context) => const HomeScreen()});
    for (final options in menuOptions) {
      appRoutes.addAll({
        options.route: (BuildContext context) => options.screen,
      });
    }
    return appRoutes;
  }

  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    return MaterialPageRoute(builder: (context) => const ErrorScreen());
  }
}

import 'package:centro_informacion/Screens/dashboard_inicio.dart';
import 'package:centro_informacion/Screens/museo.dart';
import 'package:centro_informacion/inicio.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: dashInicio(),
      /* routes: {
        '/inicio': (context) => Inicio(),
        '/home': (context) => dashInicio(),
        '/museo': (context) => museo_pluma(),
      }, */
    );
  }
}

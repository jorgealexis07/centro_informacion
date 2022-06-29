import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'Screens/dashboard_inicio.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class Inicio extends StatefulWidget {
  static String id = "inicio";

  @override
  _InicioState createState() => _InicioState();
}

class _InicioState extends State<Inicio> {
  @override
  void initState() {
    super.initState();
    Timer(
        Duration(seconds: 5),
        () => Navigator.push(
            context, MaterialPageRoute(builder: (context) => dashInicio())));
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Image.asset(
            'assets/logo_centro_informacion.png',
            height: 300.0,
          ),
          SizedBox(height: 50.0),
          SpinKitWanderingCubes(color: Colors.amber),
        ],
      ),
    );
  }
}

// TODO Implement this library.
import 'package:flutter/material.dart';

import 'package:por/Screems/splash.dart';
import 'package:por/Screems/inicio.dart';
import 'package:por/Screems/cambio.dart';
import 'package:por/Screems/login.dart';
import 'package:por/Screems/sinup.dart';

import 'Screems/sinup.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //debugShowCheckedModeBanner: false,
      home: Scaffold(
          body: PageView(
        children: <Widget>[
          Splash(),
          Inicio(),
          Cambio(),
          Login(),
          Datos(),
        ],
      )),
    );
  }
}

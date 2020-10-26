import 'package:flutter/material.dart';
import 'package:por/Screems/inicio.dart';
import 'package:por/Screems/login.dart';
import 'package:por/Screems/splash.dart';

class Cambio extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: PageView(
          children: <Widget>[
            Splash(),
            Inicio(),
          ],
        ),
      ),
    );
  }
}

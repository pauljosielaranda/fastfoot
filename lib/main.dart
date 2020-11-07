// ignore: todo
// TODO Implement this library.
import 'package:flutter/cupertino.dart';

import 'package:flutter/material.dart';
import 'package:por/Screems/cambio.dart';
import 'package:por/Screems/inicio.dart';
import 'package:por/Screems/login.dart';
import 'package:por/Screems/principal.dart';
import 'package:por/Screems/sinup.dart';
import 'package:por/Screems/splash.dart';
import 'package:provider/provider.dart';

import 'Providers/UserPrv.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => UserPrv()),
      ],
      child: App(),
    ),
  );
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
          SingUp(),
          Principal(),
        ],
      )),
    );
  }
}

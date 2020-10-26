import 'dart:math';
import 'package:flutter/material.dart';
import 'package:por/Screems/login.dart';
import 'package:por/Screems/sinup.dart';

class Datos extends StatefulWidget {
  const Datos({Key key}) : super(key: key);
  @override
  _DatosState createState() => _DatosState();
}

class _DatosState extends State<Datos> {
  String strNombre = '';
  final tec1 = TextEditingController();
  final tec2 = TextEditingController();
  final tec3 = TextEditingController();
  final tec4 = TextEditingController();
  final tec5 = TextEditingController();
  @override
  void dispose() {
    tec1.dispose();
    tec2.dispose();
    tec3.dispose();
    tec4.dispose();
    tec5.dispose();
    super.dispose();
  }

  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => Login()));
          },
        ),
        title: Text('Sign Up'),
        backgroundColor: Color.fromARGB(255, 252, 79, 50),
      ),
      body: SingleChildScrollView(
          child: Form(
        child: Column(
          children: <Widget>[
            Container(
              height: MediaQuery.of(context).size.height * .25,
              width: double.infinity,
              child: Image(
                image: AssetImage('assets/image/Fondo5.png'),
              ),
            ),
            Container(
              color: Color.fromARGB(255, 255, 249, 239),
              height: MediaQuery.of(context).size.height * .63,
              padding: EdgeInsets.only(top: 20.0),
              // color: Colors.red,
              width: double.infinity,
              child: FractionallySizedBox(
                heightFactor: .95,
                widthFactor: .85,
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Expanded(
                      child: Column(
                        children: <Widget>[
                          Expanded(
                            child: FractionallySizedBox(
                              heightFactor: .8,
                              widthFactor: 1,
                              child: Container(
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(12),
                                      border: Border.all(
                                          width: 1.2, color: Colors.black)),
                                  child: FractionallySizedBox(
                                    heightFactor: .8,
                                    widthFactor: .9,
                                    child: TextField(
                                      controller: tec1,
                                      decoration: InputDecoration(
                                        hoverColor: Colors.white,
                                        hintText: 'Nombre',
                                      ),
                                    ),
                                  )),
                            ),
                          ),
                          Expanded(
                            child: FractionallySizedBox(
                              heightFactor: .8,
                              widthFactor: 1,
                              child: Container(
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(12),
                                      border: Border.all(
                                          width: 1.2, color: Colors.black)),
                                  child: FractionallySizedBox(
                                    heightFactor: .8,
                                    widthFactor: .9,
                                    child: TextField(
                                      controller: tec2,
                                      decoration: InputDecoration(
                                        hoverColor: Colors.white,
                                        hintText: 'Email',
                                      ),
                                    ),
                                  )),
                            ),
                          ),
                          Expanded(
                            child: FractionallySizedBox(
                              heightFactor: .8,
                              widthFactor: 1,
                              child: Container(
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(12),
                                      border: Border.all(
                                          width: 1.2, color: Colors.black)),
                                  child: FractionallySizedBox(
                                    heightFactor: .8,
                                    widthFactor: .9,
                                    child: TextField(
                                      controller: tec3,
                                      decoration: InputDecoration(
                                        hoverColor: Colors.white,
                                        hintText: 'Teléfono',
                                      ),
                                    ),
                                  )),
                            ),
                          ),
                          Expanded(
                            child: FractionallySizedBox(
                              heightFactor: .8,
                              widthFactor: 1,
                              child: Container(
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(12),
                                      border: Border.all(
                                          width: 1.2, color: Colors.black)),
                                  child: FractionallySizedBox(
                                    heightFactor: .8,
                                    widthFactor: .9,
                                    child: TextField(
                                      controller: tec4,
                                      decoration: InputDecoration(
                                        hoverColor: Colors.white,
                                        hintText: 'Contraseña',
                                      ),
                                    ),
                                  )),
                            ),
                          ),
                          Expanded(
                            child: FractionallySizedBox(
                              heightFactor: .8,
                              widthFactor: 1,
                              child: Container(
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(12),
                                      border: Border.all(
                                          width: 1.2, color: Colors.black)),
                                  child: FractionallySizedBox(
                                    heightFactor: .8,
                                    widthFactor: .9,
                                    child: TextField(
                                      controller: tec5,
                                      decoration: InputDecoration(
                                        hoverColor: Colors.white,
                                        hintText: 'Confirmar contraseña',
                                      ),
                                    ),
                                  )),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: MediaQuery.of(context).size.height * .20,
                      //color: Colors.green,
                      child: FractionallySizedBox(
                          heightFactor: .5,
                          widthFactor: 1,
                          child: Container(
                            decoration: BoxDecoration(
                                color: Color.fromARGB(255, 252, 79, 50),
                                borderRadius: BorderRadius.circular(12)),
                            child: TextButton(
                              onPressed: () {
                                tec1.text = '';
                                tec2.text = '';
                                tec3.text = '';
                                tec4.text = '';
                                tec5.text = '';
                              },
                              child: Text(
                                'REGISTRARSE',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 16),
                              ),
                            ),
                          )),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      )),
    ));
  }
}

import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'package:flutter/material.dart';

class Restauran extends StatelessWidget {
  String strRuta;
  String strAlimento;
  String strDescripcion;
  String strPuntaje;
  String strDis;
  String strTiempo;

  Restauran(String ruta, String alimento, String descripcion, String puntaje,
      String distancia, String tiempo) {
    strRuta = ruta;
    strAlimento = alimento;
    strDescripcion = descripcion;
    strPuntaje = puntaje;
    strDis = distancia;
    strTiempo = tiempo;
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * .65,
      padding: EdgeInsets.only(right: 10, bottom: 10),
      color: Color.fromARGB(255, 255, 245, 226),
      child: Container(
        decoration: BoxDecoration(
          // borderRadius: BorderRadius.circular(15),
          color: Color.fromARGB(255, 255, 255, 255),
        ),
        padding: EdgeInsets.all(5),
        child: Column(children: [
          Expanded(
            flex: 4,
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage(strRuta),
                  )),
            ),
          ),
          Expanded(
            flex: 2,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.max,
              children: [
                Expanded(
                    flex: 2,
                    child: Container(
                      child: Align(
                        alignment: Alignment.bottomLeft,
                        child: Text(
                          strAlimento,
                          textScaleFactor: 1.4,
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                    )),
                Expanded(
                    child: Container(
                  child: Text(strDescripcion),
                ))
              ],
            ),
          ),
          Expanded(
              flex: 2,
              child: FractionallySizedBox(
                  heightFactor: .9,
                  child: Row(children: [
                    Expanded(
                        child: FractionallySizedBox(
                            widthFactor: .9,
                            heightFactor: 1,
                            child: Container(
                                child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: <Widget>[
                                Icon(
                                  Icons.star,
                                  color: Colors.yellow,
                                ),
                                Text(
                                  strPuntaje,
                                  style: TextStyle(
                                      color: Colors.red,
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold),
                                )
                              ],
                            )))),
                    Expanded(
                      child: FractionallySizedBox(
                        widthFactor: .9,
                        heightFactor: 1,
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: Color.fromARGB(255, 255, 245, 226),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              Icon(Icons.add_location),
                              Text(strDis,
                                  style: TextStyle(fontWeight: FontWeight.bold))
                            ],
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: FractionallySizedBox(
                        widthFactor: .9,
                        heightFactor: 1,
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: Color.fromARGB(255, 255, 245, 226),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              Icon(
                                Icons.access_time_outlined,
                                color: Colors.black,
                              ),
                              Text(
                                strTiempo,
                                style: TextStyle(fontWeight: FontWeight.bold),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ]))),
        ]),
      ),
    );
  }
}

class Categoria extends StatelessWidget {
  String strRuta;
  String strCategoria;
  String strLugares;
  Color col;

  Categoria(String ruta, String categoria, String lugares, String color) {
    strRuta = ruta;
    strCategoria = categoria;
    strLugares = lugares;
    col = Color(int.parse("FF" + color, radix: 16));
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * .32,
      padding: EdgeInsets.only(right: 10, top: 5),
      child: Container(
        padding: EdgeInsets.only(bottom: 8, top: 8, left: 5, right: 5),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          color: col,
        ),
        child: Column(children: <Widget>[
          Expanded(
              flex: 6,
              child: FractionallySizedBox(
                heightFactor: 1,
                widthFactor: 1,
                child: Container(
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(strRuta), fit: BoxFit.cover)),
                ),
              )),
          Expanded(
              flex: 3,
              child: FractionallySizedBox(
                heightFactor: 1,
                widthFactor: 1,
                child: Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Text(
                        strCategoria,
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                      Text(
                        strLugares,
                        style: TextStyle(fontSize: 12, color: Colors.white),
                      )
                    ],
                  ),
                ),
              ))
        ]),
      ),
    );
  }
}

class Recomendados extends StatelessWidget {
  String strRuta;
  String strNombre;
  String strCaracteristicas;
  int intEstrellas;
  Recomendados(
      String ruta, String nombre, String caracteristicas, int estrellas) {
    strRuta = ruta;
    strNombre = nombre;
    strCaracteristicas = caracteristicas;
    intEstrellas = estrellas;
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * .5,
      padding: EdgeInsets.only(right: 10, bottom: 10),
      color: Color.fromARGB(255, 255, 245, 226),
      child: Container(
        decoration: BoxDecoration(
          //borderRadius: BorderRadius.circular(15),
          color: Color.fromARGB(255, 255, 255, 255),
        ),
        padding: EdgeInsets.all(5),
        child: Column(children: [
          Expanded(
            flex: 4,
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage('assets/image/McBurger.png'),
                  )),
            ),
          ),
          Expanded(
            flex: 2,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.max,
              children: [
                Expanded(
                    flex: 2,
                    child: Container(
                      child: Align(
                        alignment: Alignment.bottomLeft,
                        child: Text(
                          strNombre,
                          textScaleFactor: 1.4,
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                    )),
                Expanded(
                    flex: 2,
                    child: Container(
                      child: Text(
                        strCaracteristicas,
                        textScaleFactor: .8,
                      ),
                    ))
              ],
            ),
          ),
          Expanded(
              flex: 2,
              child: FractionallySizedBox(
                child: Row(
                  children: List.generate(
                      intEstrellas,
                      (index) => Icon(
                            Icons.star,
                            color: Colors.yellow,
                          )),
                ),
              )),
        ]),
      ),
    );
  }
}

class Principal extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // SystemChrome.setEnabledSystemUIOverlays([]);
    return MaterialApp(
        title: 'Principal',
        home: Scaffold(
            body: Container(
                color: Color.fromARGB(255, 255, 245, 226),
                child: Column(
                  children: <Widget>[
                    Container(
                      height: MediaQuery.of(context).size.height * .2,
                      padding: EdgeInsets.only(
                          left: 22, right: 22, top: 15, bottom: 15),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(15),
                              bottomRight: Radius.circular(15)),
                          color: Color.fromARGB(255, 252, 79, 50)),
                      child: Column(
                        children: <Widget>[
                          Expanded(
                            flex: 3,
                            child: Column(
                              children: <Widget>[
                                Expanded(
                                  flex: 4,
                                  child: Container(
                                    child: Row(
                                      children: <Widget>[
                                        Expanded(
                                            flex: 7,
                                            child: Container(
                                              alignment: Alignment.centerLeft,
                                              child: Text(
                                                'HOLA JOSIEL',
                                                style: TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                    color: Colors.white,
                                                    fontSize: 22),
                                              ),
                                            )),
                                        Expanded(
                                            flex: 1,
                                            child: Align(
                                                alignment:
                                                    Alignment.centerRight,
                                                child: Container(
                                                  alignment:
                                                      Alignment.centerRight,
                                                  child: Container(
                                                      padding:
                                                          EdgeInsets.all(0),
                                                      decoration: BoxDecoration(
                                                          color: Colors.cyan,
                                                          border: Border.all(
                                                              width: 6.0,
                                                              color:
                                                                  Colors.white),
                                                          shape:
                                                              BoxShape.circle),
                                                      child: IconButton(
                                                          padding:
                                                              EdgeInsets.all(0),
                                                          icon: Icon(
                                                              Icons.arrow_back),
                                                          onPressed: null)),
                                                )))
                                      ],
                                    ),
                                  ),
                                ),
                                Expanded(
                                  flex: 2,
                                  child: FractionallySizedBox(
                                    widthFactor: 1,
                                    heightFactor: 1,
                                    alignment: Alignment.topCenter,
                                    child: Text(
                                      '¿Qué quieres comer hoy?',
                                      style: TextStyle(
                                        color:
                                            Color.fromARGB(255, 255, 240, 215),
                                        fontSize: 16,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Expanded(
                            flex: 3,
                            child: FractionallySizedBox(
                              widthFactor: 1,
                              heightFactor: .9,
                              alignment: Alignment.bottomCenter,
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(12),
                                  color: Color.fromARGB(255, 252, 131, 110),
                                ),
                                child: ListTile(
                                  leading: Icon(
                                    Icons.search,
                                  ),
                                  title: Transform(
                                      transform:
                                          Matrix4.translationValues(-24, -3, 0),
                                      child: TextField(
                                        decoration: InputDecoration(
                                            hintText:
                                                'Buscar platillos o restaurantes',
                                            hintStyle: TextStyle(
                                              color: Colors.white,
                                              fontSize: 15,
                                            ),
                                            enabledBorder: UnderlineInputBorder(
                                                borderSide: BorderSide(
                                                    color: Color.fromARGB(
                                                        0, 0, 0, 0)))),
                                      )),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: SingleChildScrollView(
                          child: Container(
                        padding: EdgeInsets.only(left: 20, top: 10),
                        child: Column(
                          children: <Widget>[
                            Container(
                              height: MediaQuery.of(context).size.height * .35,
                              child: Column(
                                children: <Widget>[
                                  Expanded(
                                      flex: 1,
                                      child: Align(
                                        alignment: Alignment.centerLeft,
                                        child: Container(
                                          child: Text(
                                            'Populares cerca de tí',
                                            textScaleFactor: 1.3,
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ),
                                      )),
                                  Expanded(
                                      flex: 5,
                                      child: ListView(
                                        scrollDirection: Axis.horizontal,
                                        children: <Widget>[
                                          Restauran(
                                              'assets/image/mcburger-rest.png',
                                              'Mc Burger',
                                              'Hamburguesas Alitas Nachos',
                                              '4.5',
                                              '300m',
                                              '20'),
                                          Restauran(
                                              'assets/image/tacostao-rest.png',
                                              'Tacos Tao',
                                              'Tacos al pastor Gringas',
                                              '4.0',
                                              '100m',
                                              '30')
                                        ],
                                      ))
                                ],
                              ),
                            ),
                            Container(
                              height: MediaQuery.of(context).size.height * .25,
                              child: Column(
                                children: <Widget>[
                                  Expanded(
                                      flex: 1,
                                      child: Align(
                                        alignment: Alignment.centerLeft,
                                        child: Container(
                                          child: Text(
                                            'Explorar Categorías',
                                            textScaleFactor: 1.3,
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ),
                                      )),
                                  Expanded(
                                      flex: 5,
                                      child: ListView(
                                        scrollDirection: Axis.horizontal,
                                        children: <Widget>[
                                          Categoria(
                                              'assets/image/burgerqueen-rest.jpg',
                                              'Rápida',
                                              '150 Lugares',
                                              'FC4F32'),
                                          Categoria(
                                              'assets/image/sushigrill-rest.png',
                                              'Ensalada',
                                              '20 Lugares',
                                              '675CE8'),
                                          Categoria(
                                              'assets/image/heladosvirgen-rest.jpg',
                                              'Postres',
                                              '43 Lugares',
                                              '239F55'),
                                          Categoria(
                                              'assets/image/krab-rest.jpg',
                                              'Maricos',
                                              '71 Lugares',
                                              'F6A03A')
                                        ],
                                      ))
                                ],
                              ),
                            ),
                            Container(
                              height: MediaQuery.of(context).size.height * .4,
                              child: Column(
                                children: <Widget>[
                                  Expanded(
                                      flex: 1,
                                      child: Align(
                                        alignment: Alignment.centerLeft,
                                        child: Container(
                                          child: Text(
                                            'Recomendados',
                                            textScaleFactor: 1.3,
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ),
                                      )),
                                  Expanded(
                                      flex: 5,
                                      child: ListView(
                                        scrollDirection: Axis.horizontal,
                                        children: <Widget>[
                                          Recomendados(
                                              'assets/image/spongebob-rest.jpg',
                                              'Sushi Grill',
                                              'Sushi, Pescado fresco, Ramen,\nEnsaladas',
                                              4),
                                          Recomendados(
                                              'assets/image/tacostao-rest.png',
                                              'Boxito Lindo',
                                              'Comida tradicional yucateca',
                                              5)
                                        ],
                                      ))
                                ],
                              ),
                            ),
                          ],
                        ),
                      )),
                    )
                  ],
                ))));
  }
}

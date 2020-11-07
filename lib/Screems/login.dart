import 'package:flutter/material.dart';
import 'package:por/Providers/UserPrv.dart';
import 'package:por/Screems/login.dart';
import 'package:por/Screems/inicio.dart';
import 'package:por/Screems/principal.dart';
import 'package:por/Screems/sinup.dart';
import 'package:por/models/user.dart';
import 'package:provider/provider.dart';

class Login extends StatefulWidget {
  Login({Key key}) : super(key: key);
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  get email => null;
  String nombre = " ";
  final nombreController = TextEditingController();

  User user = User();

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  void dispose() {
    nombreController.dispose();
    super.dispose();
  }

  Widget build(BuildContext context) {
    final UserPrv userProvider = Provider.of<UserPrv>(context);
    return MaterialApp(
      title: 'Login',
      home: Scaffold(
        //resizeToAvoidBottomInset: false,
        resizeToAvoidBottomPadding: false,
        appBar: AppBar(
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Inicio()));
            },
          ),
          backgroundColor: Color.fromARGB(255, 252, 79, 50),
          title: Text('Login'),
        ),
        body: Container(
          width: double.infinity,
          height: double.infinity,
          color: Color.fromARGB(255, 255, 249, 239),
          child: Column(
            children: <Widget>[
              Container(
                height: MediaQuery.of(context).size.height * .33,
                child: FractionallySizedBox(
                    widthFactor: 1.2,
                    heightFactor: 1.2,
                    child: Container(
                      color: Colors.blue,
                      child:
                          Image(image: AssetImage('assets/image/fondo2.png')),
                    )),
              ),
              Container(
                  height: MediaQuery.of(context).size.height * .35,
                  child: FractionallySizedBox(
                    widthFactor: .9,
                    heightFactor: 1,
                    child: Column(
                      children: <Widget>[
                        Expanded(
                          child: Center(
                            child: Text(
                              'Ingresa tus credenciales\nregistradas para acceder',
                              textScaleFactor: 1.5,
                              textAlign: TextAlign.center,
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                        Expanded(
                          child: FractionallySizedBox(
                            heightFactor: .8,
                            child: Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(12),
                                  border: Border.all(
                                      width: 2, color: Colors.black)),
                              child: Card(
                                margin: EdgeInsets.zero,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(12)),
                                child: ListTile(
                                  leading: Icon(Icons.email),
                                  title: TextFormField(
                                    decoration: InputDecoration(
                                        enabledBorder: UnderlineInputBorder(
                                            borderSide: BorderSide(
                                                color: Color.fromARGB(
                                                    0, 0, 0, 0)))),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          child: FractionallySizedBox(
                            heightFactor: .8,
                            child: Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(12),
                                  border: Border.all(
                                      width: 2, color: Colors.black)),
                              child: Card(
                                margin: EdgeInsets.zero,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(12)),
                                child: ListTile(
                                  leading: Icon(Icons.lock_sharp),
                                  title: TextFormField(
                                    obscureText: true,
                                    decoration: InputDecoration(
                                        enabledBorder: UnderlineInputBorder(
                                            borderSide: BorderSide(
                                                color: Color.fromARGB(
                                                    0, 0, 0, 0)))),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                            flex: 1,
                            child: Center(
                              child: InkWell(
                                child: RichText(
                                    text: TextSpan(
                                        text: '¿Aún no tienes una cuenta?',
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 16,
                                        ),
                                        children: [
                                      TextSpan(
                                        text: ' Consigue una',
                                        style: TextStyle(
                                          color: Colors.red,
                                          fontSize: 16,
                                        ),
                                      )
                                    ])),
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => SingUp()));
                                },
                              ),
                            )),
                      ],
                    ),
                  )),
              Expanded(
                child: FractionallySizedBox(
                  widthFactor: .9,
                  heightFactor: .5,
                  child: Container(
                    child: MaterialButton(
                      color: Color.fromARGB(255, 252, 79, 50),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(18.0)),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Principal()));
                      },
                      child: Text(
                        'CONTINUAR',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ),
              )
              /* child: Center(
                  child: Row(
                    children: [
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.all(10),
                          child: MaterialButton(
                            color: Color.fromARGB(255, 252, 79, 50),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(18.0)),
                            onPressed: () {},
                            child: Text(
                              'CONTINUAR',
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),*/
            ],
          ),
        ),
      ),
    );
  }
}

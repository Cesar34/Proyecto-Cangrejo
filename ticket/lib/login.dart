import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:ticket/Registro.dart';

class login extends StatefulWidget {
  const login({Key? key}) : super(key: key);

  @override
  _loginState createState() => _loginState();
}

class _loginState extends State<login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: Text("Ticket"),
      ),
      body: Center(
        child: ListView(
          children: <Widget>[
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Image.asset('img/logo.jpg'),
                ListTile(
                  title: Text('Obten un regalo y 10% menos en tu primeras compras', style: TextStyle(fontSize: 12)),
                  leading: Icon(
                    Icons.insert_invitation,
                    color: Colors.green[500],
                  ),
                ),
                TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'E-mail',
                  ),
                ),
                Text(''),
                TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Contraseña',
                  ),
                ),
                Text(""),
                Text('Olvide mi contraseña'),
                ButtonTheme(
                  minWidth: 350.0,
                  child: RaisedButton(
                    onPressed: () {
                    },
                    child: Text("Entrar", style: TextStyle(fontSize: 20, color: Colors.white),),
                  ),
                ),
                Text(''),
                ButtonTheme(
                  buttonColor: Colors.white,
                  child: RaisedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Registro()),
                      );
                    },
                    child: Text("¿Quieres usar la app?, !Registrate!", style: TextStyle(fontSize: 20, color: Colors.blue),),
                  ),
                ),
                Text(''),
                Text('Al elegir Crear una cuenta Facebook o Google esta de acuerdo con las', style: TextStyle(fontSize: 13,)),
                const Text.rich(
                  TextSpan(
                    text: 'Condiciones de uso', style: TextStyle(fontSize: 13, color: Colors.blue), // default text style
                    children: <TextSpan>[
                      TextSpan(text: ' y ', style: TextStyle(fontSize: 13, color: Colors.black)),
                      TextSpan(text: 'Politica de privacidad', style: TextStyle(fontSize: 13, color: Colors.blue)),
                    ],
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}

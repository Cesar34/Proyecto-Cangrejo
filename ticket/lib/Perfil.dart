import 'package:flutter/material.dart';
import 'package:ticket/inicio.dart';

class Perfil extends StatefulWidget {
  const Perfil({Key? key}) : super(key: key);

  @override
  _PerfilState createState() => _PerfilState();
}

class _PerfilState extends State<Perfil> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: ListTile(
          title: Text('Perfil', style: TextStyle(fontSize: 20),),
        ),
      ),
      body:  Center(
        child: ListView(
          children: <Widget>[
            Column(
              children: <Widget>[
                Image.asset('img/usuario.png'),
                Text(''),
                Text('Cesar', style: TextStyle(fontSize: 30),),
                Text('Mexico', style: TextStyle(color: Colors.grey),),
                Text(''),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Expanded(
                          child: Card(
                              clipBehavior: Clip.antiAlias,
                              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
                              child: Column(
                                children: <Widget>[
                                  Container(
                                      padding: EdgeInsets.all(10),
                                      child: ListTile(
                                        title: Text('9', textAlign: TextAlign.center,),
                                        subtitle: Text('Guardados', style: TextStyle( fontSize: 10),),
                                      )
                                  )
                                ],
                              )),
                        ),
                        Expanded(
                          child: Card(
                              clipBehavior: Clip.antiAlias,
                              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
                              child: Column(
                                children: <Widget>[
                                  Container(
                                      padding: EdgeInsets.all(10),
                                      child: ListTile(
                                        title: Text('0', textAlign: TextAlign.center,),
                                        subtitle: Text('Seguidores', style: TextStyle( fontSize: 10),),
                                      )
                                  )
                                ],
                              )),
                        ),
                        Expanded(
                          child: Card(
                              clipBehavior: Clip.antiAlias,
                              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
                              child: Column(
                                children: <Widget>[
                                  Container(
                                      padding: EdgeInsets.all(10),
                                      child: ListTile(
                                        title: Text('0', textAlign: TextAlign.center,),
                                        subtitle: Text('Siguiendo', style: TextStyle( fontSize: 10),),
                                      )
                                  )
                                ],
                              )),
                        ),
                      ],
                    ),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Expanded(
                          child: Card(
                              child: Column(
                                children: <Widget>[
                                  Container(
                                      padding: EdgeInsets.all(10),
                                      child: ListTile(
                                        title: Text('Listas de deseos', textAlign: TextAlign.center,style: TextStyle( decoration: TextDecoration.underline, color: Colors.blue),),
                                      )
                                  )
                                ],
                              )),
                        ),
                        Expanded(
                          child: Card(
                              child: Column(
                                children: <Widget>[
                                  Container(
                                      padding: EdgeInsets.all(10),
                                      child: ListTile(
                                        title: Text('Reseñas', textAlign: TextAlign.center,style: TextStyle(color: Colors.grey, fontSize: 15)),
                                      )
                                  )
                                ],
                              )),
                        ),
                        Expanded(
                          child: Card(
                              child: Column(
                                children: <Widget>[
                                  Container(
                                      padding: EdgeInsets.all(10),
                                      child: ListTile(
                                        title: Text('Cargas', textAlign: TextAlign.center, style: TextStyle(color: Colors.grey),),
                                      )
                                  )
                                ],
                              )),
                        ),
                      ],
                    ),
                  ],
                ),
                Text(''),
                Text(''),
                Text(''),
                Text('Aun no tienes listas de deseoas', style: TextStyle(fontSize: 20),),
                Text('Mantente actualizado(a) sobre las listas de deseas '
                    'de otras personas', style: TextStyle(color: Colors.grey, fontSize: 13), textAlign: TextAlign.center,),
                Text(''),
                Text(''),
                Text(''),
              ],
            ),
          ],
        ),
      ),
    );  }
}

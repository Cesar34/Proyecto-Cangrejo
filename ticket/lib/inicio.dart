import 'package:flutter/material.dart';
import 'package:ticket/Perfil.dart';
import 'package:ticket/login.dart';

class inicio extends StatefulWidget {
  const inicio({Key? key}) : super(key: key);

  @override
  _inicioState createState() => _inicioState();
}

class _inicioState extends State<inicio> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 5,
        child: Scaffold(
          appBar: AppBar(
            bottom: TabBar(
              labelPadding: EdgeInsets.symmetric(horizontal: 10.0),
              tabs: [
                Tab(text: 'Popular'),
                Tab(icon: Icon(Icons.location_on, color: Colors.green,)),
                Tab(icon: Icon(Icons.disc_full, color: Colors.amber,)),
                Tab(icon: Icon(Icons.local_car_wash, color: Colors.orange,)),
                Tab(text: 'Visualizacion'),
              ],
            ),
          ),
          body: TabBarView(
            children: [
              ListView(
                children: [
                  Text(""),
                  Text("Proximamente", textAlign: TextAlign.center,),
                  Image.asset("img/publicidad.jfif")
                ],
              ),
              Text('Nuevo contenido proximamnete', textAlign: TextAlign.center,),
              Text('Nuevo contenido proximamnete', textAlign: TextAlign.center,),
              Text('Nuevo contenido proximamnete', textAlign: TextAlign.center,),
              Text('Nuevo contenido proximamnete', textAlign: TextAlign.center,),
            ],
          ),
          drawer: Drawer(
            child: ListView(
              // Importante: elimina cualquier padding del ListView.
              padding: EdgeInsets.zero,
              children: <Widget>[
                DrawerHeader(
                  child: Row(
                    children: <Widget>[
                      Image.asset('img/usuario.png', scale: 4,),
                      ButtonTheme(
                        minWidth: 150.0,
                        buttonColor: Colors.white,
                        child: RaisedButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => Perfil()),
                            );
                          },
                          shape: RoundedRectangleBorder(side: BorderSide(
                              color: Colors.blue,
                              width: 0,
                              style: BorderStyle.solid
                          )),
                          child: Row(
                            children: <Widget>[
                              Container(
                                child: Column(
                                  children: <Widget>[
                                    Text("Usuario", style: TextStyle(fontSize: 20, color: Colors.black),),
                                    Text("Ver perfil", style: TextStyle(fontSize: 15, color: Colors.grey),),
                                  ],
                                ),
                                height: 50,
                              ),
                              Icon(Icons.arrow_forward_ios),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  decoration: BoxDecoration(
                    color: Colors.white,
                  ),
                ),
                ListTile(
                  title: ListTile(
                    title: Text('Explorar (Detalles)'),
                    leading: Icon(
                      Icons.home,
                      color: Colors.black,
                      size: 20,
                    ),
                  ),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => inicio()),
                    );
                  },
                ),
                ListTile(
                  title: ListTile(
                    title: Text('Gana'),
                    subtitle:
                    Row(
                      children: <Widget>[
                        Text('  !Antes 2.450 MXN!       ', style: TextStyle( fontSize: 10),),
                        Text('01:44:36', style: TextStyle(backgroundColor: Colors.orangeAccent),),
                      ],
                    ),
                    leading: Icon(
                      Icons.card_travel,
                      color: Colors.deepOrangeAccent,
                      size: 20,
                    ),
                  ),
                  onTap: () {
                    // // Actualiza el estado de la aplicación
                    // ...
                    // Luego cierra el drawer
                    //Navigator.pop(context);
                  },
                ),
                ListTile(
                  title: ListTile(
                    title: Text('Buscar'),
                    leading: Icon(
                      Icons.search,
                      color: Colors.black,
                      size: 20,
                    ),
                  ),
                  onTap: () {
                    // // Actualiza el estado de la aplicación
                    // ...
                    // Luego cierra el drawer
                    //Navigator.pop(context);
                  },
                ),ListTile(
                  title: ListTile(
                    title: Text('Notificaciones'),
                    leading: Icon(
                      Icons.notifications,
                      color: Colors.black,
                      size: 20,
                    ),
                  ),
                  onTap: () {
                    // // Actualiza el estado de la aplicación
                    // ...
                    // Luego cierra el drawer
                    //Navigator.pop(context);
                  },
                ),ListTile(
                  title: ListTile(
                    title: Text('Carrito de compras'),
                    leading: Icon(
                      Icons.shopping_cart,
                      color: Colors.black,
                      size: 20,
                    ),
                  ),
                  onTap: () {
                    // // Actualiza el estado de la aplicación
                    // ...
                    // Luego cierra el drawer
                    //Navigator.pop(context);
                  },
                ),
                ListTile(
                  title: ListTile(
                    title: Text('Historial de pedidos'),
                    leading: Icon(
                      Icons.library_books,
                      color: Colors.black,
                      size: 20,
                    ),
                  ),
                  onTap: () {
                    // // Actualiza el estado de la aplicación
                    // ...
                    // Luego cierra el drawer
                    //Navigator.pop(context);
                  },
                ),
                ListTile(
                  title: ListTile(
                    title: ListTile(
                      title: Text('Wish Cash'),
                      trailing: Icon(
                        Icons.remove_circle,
                        color: Colors.red,
                        size: 10,
                      ),
                    ),
                    leading: Icon(
                      Icons.credit_card,
                      color: Colors.black,
                      size: 20,
                    ),
                  ),
                  onTap: () {
                    // // Actualiza el estado de la aplicación
                    // ...
                    // Luego cierra el drawer
                    //Navigator.pop(context);
                  },
                ),

                ListTile(
                  title: ListTile(
                    title: Text('Servicio al cliente'),
                    leading: Icon(
                      Icons.person_outline,
                      color: Colors.black,
                      size: 20,
                    ),
                  ),
                  onTap: () {
                    // // Actualiza el estado de la aplicación
                    // ...
                    // Luego cierra el drawer
                    //Navigator.pop(context);
                  },
                ),
                ListTile(
                  title: ListTile(
                    title: Text('Salir'),
                    leading: Icon(
                      Icons.exit_to_app,
                      color: Colors.black,
                      size: 20,
                    ),
                  ),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => login()),
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );  }
}

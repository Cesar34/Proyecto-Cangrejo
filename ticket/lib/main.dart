import 'package:flutter/material.dart';
import 'login.dart';


void main() {
  runApp(MaterialApp(
    routes: {"/": (context) => login()},
    initialRoute: "/",
  ));
}



// ignore_for_file: prefer_const_constructors

import 'package:exflutterrepaso/ejercicio1/pintar.widget.dart';
import 'package:exflutterrepaso/ejercicio1/pintarimagen.widget.dart';
import 'package:exflutterrepaso/ejercicio2/pintar2.widget.dart';
import 'package:flutter/material.dart';

import 'soluciones/ejercicio4.dart';
import 'soluciones/ejercicio5.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  final String texto =
      "Hola mundo aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa";

  @override
  Widget build(BuildContext context) {
    final BoxDecoration decoracion =
        BoxDecoration(border: Border.all(width: 4));
    final BoxShadow boxShadow = BoxShadow(
      color: Colors.red,
      blurRadius: 5.0,
      offset: Offset(0, 5),
    );

    return MaterialApp(
      title: 'Repaso',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Ejercicio4(),
    );
  }
}


//EJERCICIO 1
/*
home: Pintar(
          nombre: texto,
          textColor: Colors.red,
          backgroundColor: const Color.fromARGB(255, 127, 207, 218),
          decoracion: decoracion,
          widgetImagen: pintarImagen(
            url: "images/hofd.jpg", boxShadow: boxShadow,
          )),
    );
*/

//EJERCICIO 2
//Pintar2()
// ignore_for_file: prefer_const_constructors

import 'package:eju2/ejercicio2.dart';
import 'package:eju2/ejercicio3.dart';
import 'package:eju2/ejercicio4.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Ejercicios Flutter',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: Scaffold(
            body: SafeArea(
                child: Enmarcador(
          basico2("Soy Basico2 dentro de Enmarcador", 50),
        ))));
  }

  /**
   * Widget Scaffold se usa con el fin de contener otros Widgets.
   * Widget SafeArea muestra el contenido en la zona segura de la pantalla.
   * Widget Un widget que dibuja un cuadro que representa dónde se agregarán otros widgets.
   */

  // Basico()
  // basico2("Soy el widget básico 2 con tamFuente=50", 50)
  // Enmarcador(basico2("Soy Basico2 dentro de Enmarcador", 50)
}

// ignore_for_file: prefer_const_constructors

import 'package:eju2/ejercicio2.dart';
import 'package:eju2/ejercicio3.dart';
import 'package:eju2/ejercicio4.dart';
import 'package:eju2/ejercicio5.dart';
import 'package:eju2/ejercicio6.dart';
import 'package:eju2/ejercicio7.dart';
import 'package:eju2/ejercicio8.dart';
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
                child: ImagenConDescripcion(
                    imgUrl: "images/flutter-alt.png",
                    child: Descripcion(
                      titulo: "Logotipo de Flutter",
                      descripcion: "El logotipo de Flutter es un trío de "
                          "hojas azules que forman un triángulo, "
                          "sugiriendo unidad y versatilidad. El "
                          "color azul evoca confianza y tecnología, "
                          "convirtiéndolo en un símbolo de innovación.",
                    )))));
  }

  /**
   * Widget Scaffold se usa con el fin de contener otros Widgets.
   * Widget SafeArea muestra el contenido en la zona segura de la pantalla.
   * Widget Un widget que dibuja un cuadro que representa dónde se agregarán otros widgets.
   */

  // Basico() Ejercicio 2
  // basico2("Soy el widget básico 2 con tamFuente=50", 50) Ejercicio 3
  // Enmarcador(basico2("Soy Basico2 dentro de Enmarcador", 50) Ejercicio 4
  /* Ejercicio 5
           body: Padding(
                padding: EdgeInsets.only(top: 80, left: 20, right: 20),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SafeArea(
                        child: TextoConSombra(
                            texto: "Soy el Widget TextoConSombra"),
                      ),
                      SizedBox(height: 20),
                      SafeArea(
                        child: TextoConSombra(
                            texto:
                                "Soy el Widget TextoConSombra ocupando mas de una linea"),
                      )
                    ]))
  */
  // Ejercicio 6 Layout1()
  // Ejercicio 7
  /*
  child: ImagenConDescripcion(
                    imgUrl: "images/flutter-alt.png",
                    child: Text("Logotipo de Flutter"))*/
}

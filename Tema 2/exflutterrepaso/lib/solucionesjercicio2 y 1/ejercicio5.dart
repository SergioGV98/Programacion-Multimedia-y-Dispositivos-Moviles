// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class TextoConSombra extends StatelessWidget {
  final String texto;
  final Color color, bgColor;
  const TextoConSombra(
      {super.key,
      required this.texto,
      this.color = Colors.black,
      this.bgColor = Colors.grey});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
          border: Border.all(color: Colors.black, width: 3),
          color: bgColor,
          boxShadow: [
            BoxShadow(
              color: Colors.black.withAlpha(150),
              blurRadius: 8,
              offset: Offset(6, 6), // Shadow position
            ),
          ]),
      child: Text(
        texto,
        textAlign: TextAlign.center,
        style: TextStyle(color: color, fontSize: 20),
      ),
    );
  }
}

// El siguiente widget es para mostrar dos ejemplares de TextoConSombra dispuestos en una
// Column, y espaciados con SizedBox.
class Ejercicio5 extends StatelessWidget {
  const Ejercicio5({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: Container(
      padding: EdgeInsets.all(10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          SizedBox(height: 50),
          TextoConSombra(texto: "Soy el widget TextoConSombra"),
          SizedBox(height: 50),
          TextoConSombra(
              texto: "Soy el widget TextoConSombra, ocupando más de una línea"),
          Expanded(flex: 3, child: Container())
          /*Botonera()*/
        ],
      ),
    )));
  }
}

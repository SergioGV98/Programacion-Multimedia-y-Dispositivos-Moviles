// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class Layout1 extends StatelessWidget {
  const Layout1({super.key});

  
  Widget celda(String texto, double tam, Color color) {
    return Container(
      color: color,
      alignment: Alignment.center,
      child: Text(texto, style: TextStyle(fontSize: tam)),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(flex: 1, child: celda("F1", 50, Colors.red)),
        Expanded(flex: 2, child: celda("F1", 50, Colors.green)),
        Expanded(flex: 1, child: celda("F3", 50, Colors.blue))
      ],
    );
  }
}

class Celda extends StatelessWidget {
  final String texto;
  final Color color;
  final double tam;

  const Celda({super.key, required this.texto, this.color = Colors.white, this.tam = 50})

  @override
  Widget build(BuildContext context){
    return Container(
      color: color,
      alignment: Alignment.center,
      child: Text(texto, style: TextStyle(fontSize: tam)),
    ); 
  }
}

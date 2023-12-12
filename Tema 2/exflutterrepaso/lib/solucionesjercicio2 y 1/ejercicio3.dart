// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class Basico2 extends StatelessWidget {
  final String texto;
  final double tamFuente;

  const Basico2({super.key, required this.texto, this.tamFuente = 30});

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Text(
      texto,
      textAlign: TextAlign.center,
      style: TextStyle(
          fontSize: tamFuente,
          color: Colors.green,
          fontWeight: FontWeight.bold),
    ));
  }
}

class Ejercicio3 extends StatelessWidget {
  const Ejercicio3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Basico2(
        texto: "Soy el widget Basico2 con tamFuente=50",
        tamFuente: 50,
      ),
    ));
  }
}

// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:u2pruebas/ejercicios/ejercicio3.dart';

class Enmarcador extends StatelessWidget {
  final Widget child;
  const Enmarcador({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: 250,
        width: 350,
        decoration: BoxDecoration(
            color: Colors.brown,
            border: Border.all(color: Colors.black54, width: 2),
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withAlpha(150),
                blurRadius: 8,
                offset: Offset(6, 6), // Shadow position
              ),
            ]),
        padding: EdgeInsets.all(20),
        child: child,
      ),
    );
  }
}

class Ejercicio4 extends StatelessWidget {
  const Ejercicio4({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: Enmarcador(
      child: Basico2(
        texto: "Soy Basico2 dentro de Enmarcador",
        tamFuente: 50,
      ),
    )));
  }
}

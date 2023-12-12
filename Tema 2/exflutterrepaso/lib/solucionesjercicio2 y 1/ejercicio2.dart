// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class Basico extends StatelessWidget {
  const Basico({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
        child: Text(
      "Soy el widget básico",
      textAlign: TextAlign.center,
      style: TextStyle(
          fontSize: 30, color: Colors.green, fontWeight: FontWeight.bold),
    ));
  }
}

class Ejercicio2 extends StatelessWidget {
  const Ejercicio2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Basico(),
    ));
  }
}

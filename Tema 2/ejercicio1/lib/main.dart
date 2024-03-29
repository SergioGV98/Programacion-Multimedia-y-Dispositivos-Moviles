// ignore_for_file: prefer_const_constructors

import 'package:ejercicio1/ejercicio1.page.dart';
import 'package:ejercicio1/ejercicio2.page.dart';
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
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple)),
      home: Ejercicio2Page(),
    );
  }
}

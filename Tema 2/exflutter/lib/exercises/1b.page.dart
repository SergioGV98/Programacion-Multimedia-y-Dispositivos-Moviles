// ignore_for_file: prefer_const_constructors

import 'package:exflutter/exercises/widgets/tituloautoria.widget.dart';
import 'package:flutter/material.dart';

class E1bPage extends StatefulWidget {
  const E1bPage({super.key});

  @override
  State<E1bPage> createState() => _E1bPageState();
}

class _E1bPageState extends State<E1bPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: TituloAutoria(
          titulo: "Examen de Flutter", autoria: "Por Sergio Garcia Vico"),
    );
  }
}

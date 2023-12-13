// ignore_for_file: prefer_const_constructors

import 'package:exflutter/exercises/widgets/cajaconsombra.widget.dart';
import 'package:exflutter/exercises/widgets/tituloautoria.widget.dart';
import 'package:flutter/material.dart';

class E1cPage extends StatefulWidget {
  const E1cPage({super.key});

  @override
  State<E1cPage> createState() => _E1cPageState();
}

class _E1cPageState extends State<E1cPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CajaConSombra(
        widget: TituloAutoria(
            titulo: "Examen de Flutter", autoria: "Por Sergio Garcia Vico"),
      ),
    );
  }
}

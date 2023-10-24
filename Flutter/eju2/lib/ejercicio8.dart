// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, must_be_immutable

import 'package:flutter/material.dart';

class Descripcion extends StatelessWidget {
  String titulo;
  String descripcion;
  Descripcion({super.key, required this.titulo, required this.descripcion});

  @override
  Widget build(BuildContext context) {
    return Text.rich(
      TextSpan(
        text: "Titulo: ",
        style: TextStyle(fontWeight: FontWeight.bold),
        children: [
          TextSpan(
            text: titulo,
            style: TextStyle(color: Colors.blue),
          ),
        ],
      ),
    );
  }
}

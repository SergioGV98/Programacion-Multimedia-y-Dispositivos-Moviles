// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class TituloAutoria extends StatelessWidget {
  final String titulo;
  final String? autoria;

  const TituloAutoria({super.key, required this.titulo, this.autoria = ""});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(
            titulo,
            style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Color(0xff1c1b1f)),
          ),
          Text(
            autoria!,
            style: TextStyle(
                fontSize: 24,
                fontStyle: FontStyle.italic,
                color: Color(0xff625b71)),
          )
        ],
      ),
    );
  }
}

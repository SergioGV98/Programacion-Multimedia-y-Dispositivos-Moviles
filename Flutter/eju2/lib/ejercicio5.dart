// ignore_for_file: prefer_const_constructors, must_be_immutable

import 'package:flutter/material.dart';

class TextoConSombra extends StatelessWidget {
  String texto;
  Color? color;
  Color? bgColor;

  TextoConSombra({super.key, required this.texto, this.color = Colors.black, this.bgColor = Colors.grey});

  @override
  Widget build(BuildContext context) {

    return Container(
      decoration: BoxDecoration(
          color: bgColor,
          border: Border.all(width: 2),
          boxShadow: [
            BoxShadow(
                color: Colors.black.withAlpha(150),
                offset: Offset(6.6, 6.6),
                blurRadius: 8),
          ]),
      child: Center(
        child: Text(
          texto,
          textAlign: TextAlign.center,
          style: TextStyle(color: color, fontSize: 20),
        ),
      ),
    );
  }
}

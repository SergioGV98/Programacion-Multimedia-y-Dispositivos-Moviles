// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, must_be_immutable

import 'package:flutter/material.dart';

class Descripcion extends StatelessWidget {
  String titulo;
  String descripcion;
  Descripcion({super.key, required this.titulo, required this.descripcion});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text.rich(
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
          ),
          SizedBox(height: 2),
          Expanded(
            child: Text.rich(TextSpan(text: descripcion),
                maxLines: 3, overflow: TextOverflow.ellipsis),
          )
        ],
      ),
    );
  }
}

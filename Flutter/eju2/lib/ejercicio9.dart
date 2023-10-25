// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class Opcion {
  final IconData icono;
  final String texto;
  const Opcion({required this.icono, required this.texto});
}

Widget botonera() {
  return Container(
    alignment: Alignment.bottomCenter,
    child: Row(children: [
      Expanded(
        child: Container(
          decoration: BoxDecoration(
              color: Colors.grey,
              border: Border(
                  top: BorderSide(color: Colors.white, width: 1),
                  right: BorderSide(color: Colors.white, width: 1))),
          width: 100,
          height: 100,
          child: Icon(Icons.person),
        ),
      ),
      Expanded(
        child: Container(
          decoration: BoxDecoration(
              color: Colors.grey,
              border: Border(
                  top: BorderSide(color: Colors.white, width: 1),
                  right: BorderSide(color: Colors.white, width: 1),
                  left: BorderSide(color: Colors.white, width: 1))),
          width: 100,
          height: 100,
          child: Icon(Icons.calendar_today),
        ),
      ),
      Expanded(
        child: Container(
          decoration: BoxDecoration(
              color: Colors.grey,
              border: Border(
                  top: BorderSide(color: Colors.white, width: 1),
                  right: BorderSide(color: Colors.white, width: 1),
                  left: BorderSide(color: Colors.white, width: 1))),
          width: 100,
          height: 100,
          child: Icon(Icons.list),
        ),
      ),
      Expanded(
        child: Container(
          decoration: BoxDecoration(
              color: Colors.grey,
              border: Border(
                  top: BorderSide(color: Colors.white, width: 1),
                  left: BorderSide(color: Colors.white, width: 1))),
          width: 100,
          height: 100,
          child: Column(
            children: [
              Icon(Icons.turned_in_outlined),
              Text.rich(
                TextSpan(text: "Opcion larga larga"),
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              )
            ],
          ),
        ),
      )
    ]),
  );
}

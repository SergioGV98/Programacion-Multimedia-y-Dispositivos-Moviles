// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class Opcion {
  final IconData icono;
  final String texto;
  const Opcion({required this.icono, required this.texto});
}

final List<Opcion> opciones = [
  const Opcion(icono: Icons.person, texto: "Perfil"),
  const Opcion(icono: Icons.calendar_today, texto: "Tareas"),
  const Opcion(icono: Icons.list, texto: "Anotaciones"),
  const Opcion(icono: Icons.bookmark, texto: "Opcion larga larga"),
];

Widget botonera() {
  return Container(
    alignment: Alignment.bottomCenter,
    child: Row(
      children: opciones.map((opcion) {
        return Expanded(
          child: Container(
            decoration: BoxDecoration(
              color: Colors.grey,
              border: Border(
                top: BorderSide(color: Colors.white, width: 1),
                left: BorderSide(color: Colors.white, width: 1),
                right: BorderSide(color: Colors.white, width: 1),
              ),
            ),
            width: 100,
            height: 100,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(opcion.icono),
                Text(
                  opcion.texto,
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
        );
      }).toList(),
    ),
  );
}
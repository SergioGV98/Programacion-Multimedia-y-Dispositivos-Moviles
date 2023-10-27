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
              color: Colors.grey[300],
              border: Border(
                top: BorderSide(color: Colors.grey, width: 1),
              ),
            ),
            width: 100,
            height: 100,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(opcion.icono),
               Text.rich(TextSpan(text: opcion.texto),textAlign: TextAlign.center, maxLines: 1, overflow: TextOverflow.ellipsis)
              ],
            ),
          ),
        );
      }).toList(),
    ),
  );
}

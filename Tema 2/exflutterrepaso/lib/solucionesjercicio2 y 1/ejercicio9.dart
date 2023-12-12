// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class Opcion {
  final IconData icon;
  final String text;
  const Opcion({required this.icon, required this.text});
}

final List<Opcion> opciones = [
  const Opcion(icon: Icons.person, text: "Perfil"),
  const Opcion(icon: Icons.calendar_today, text: "Tareas"),
  const Opcion(icon: Icons.list, text: "Anotaciones"),
  const Opcion(icon: Icons.bookmark, text: "Opcion larga larga")
];

class Botonera extends StatelessWidget {
  const Botonera({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          border: Border(top: BorderSide(color: Colors.grey))),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: opciones
            .map((op) => Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.grey.shade200,
                        border: Border(
                            left: BorderSide(color: Colors.white),
                            right: BorderSide(color: Colors.white))),
                    padding: const EdgeInsets.symmetric(
                        vertical: 20.0, horizontal: 5),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(bottom: 5),
                          child: Icon(op.icon),
                        ),
                        Text(
                          op.text,
                          overflow: TextOverflow.ellipsis,
                        )
                      ],
                    ),
                  ),
                ))
            .toList(),
      ),
    );
  }
}

class Ejercicio9 extends StatelessWidget {
  const Ejercicio9({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Expanded(flex: 7, child: Container()),
            Expanded(child: Botonera()),
          ],
        ),
      ),
    );
  }
}

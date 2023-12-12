// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

import 'ejercicio7.dart';

class Descripcion extends StatelessWidget {
  final String titulo;
  final String descripcion;
  const Descripcion(
      {super.key, required this.titulo, required this.descripcion});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 8),
        Text.rich(TextSpan(text: "", children: [
          TextSpan(
              text: "Título: ", style: TextStyle(fontWeight: FontWeight.bold)),
          TextSpan(
              text: titulo,
              style: TextStyle(
                  color: Colors.blue,
                  fontWeight: FontWeight.bold,
                  fontStyle: FontStyle.italic))
        ])),
        SizedBox(height: 10),
        Text(
          descripcion,
          overflow: TextOverflow.ellipsis,
          maxLines: 4,
        )
      ],
    );
  }
}

// El siguiente widget es para mostrar el uso combinado de ImagenConDescripcion, junto con Descripcion.

class Ejercicio8 extends StatelessWidget {
  const Ejercicio8({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
                child: ImagenConDescripcion(
                    imgUrl: "images/flutter.png",
                    child: Descripcion(
                      titulo: "Logotipo de Flutter",
                      descripcion:
                          "El logotipo de Flutter es un trío de hojas azules "
                          "que forman un triángulo, sugiriendo unidad y versatilidad."
                          "El color azul evoca confianza y tecnología, convirtiéndolo "
                          "en un símbolo de innovación.",
                    ))),
            Expanded(flex: 5, child: Container()),
          ],
        ),
      ),
    );
  }
}

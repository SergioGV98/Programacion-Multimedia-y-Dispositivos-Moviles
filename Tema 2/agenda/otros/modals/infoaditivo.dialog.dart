// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:listadoaditivos/widgets/iconopeligrosidad.widget.dart';

import '../models/aditivo.class.dart';

void mostrarInformacionAditivo(BuildContext context, Aditivo aditivo) {
  showDialog(
    context: context,
    builder: (context) => AlertDialog(
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(aditivo.codigo),
          IconoPeligrosidad(aditivo.peligrosidad)
        ],
      ),
      content: SizedBox(
        width: double.maxFinite,
        child: ListView(
          shrinkWrap: true,
          children: [
            ListTile(
              leading: Icon(Icons.book),
              title: Text("Nombre"),
              subtitle: Text(aditivo.nombre),
            ),
            ListTile(
              leading: Icon(Icons.comment),
              title: Text("Comentario"),
              subtitle: Text(aditivo.comentario),
            )
          ],
        ),
      ),
      actionsAlignment: MainAxisAlignment.center,
      actions: [
        ElevatedButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            child: Text("Aceptar"))
      ],
    ),
  );
}

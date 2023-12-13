// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

void showInfo(BuildContext context) {
  showDialog(
    context: context,
    builder: (context) {
      return AlertDialog(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(children: [
              Icon(Icons.info_outline),
              SizedBox(width: 10),
              Text("Información"),
            ])
          ],
        ),
        content: SizedBox(
          width: double.maxFinite,
          child: ListView(
            shrinkWrap: true,
            children: [
              ListTile(
                title: Text(
                    "Examen realizado el 13-12-2023, de 10:15 a 12:45, por Sergio Garcia Vico, con alineación justificada."),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  ElevatedButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      child: Row(
                        children: [Icon(Icons.check), Text("OK")],
                      )),
                ],
              )
            ],
          ),
        ),
      );
    },
  );
}

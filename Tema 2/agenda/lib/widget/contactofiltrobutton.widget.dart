// ignore_for_file: prefer_const_constructors

import 'package:agenda/models/estadofiltro.class.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ContactFilterButton extends StatelessWidget {
  const ContactFilterButton({super.key});

  @override
  Widget build(BuildContext context) {
    EstadoFiltro filtro = Provider.of<EstadoFiltro>(context);

    return PopupMenuButton(
      icon: Icon(Icons.filter_alt),
      itemBuilder: (context) => [
        PopupMenuItem(child: StatefulBuilder(builder: (context, setState) {
          return SwitchListTile(
            value: filtro.familia,
            title: Text("Familia"),
            onChanged: (value) {
              setState(
                () {
                  filtro.familia = value;
                },
              );
            },
          );
        })),
        PopupMenuItem(child: StatefulBuilder(builder: (context, setState) {
          return SwitchListTile(
            value: filtro.amistad,
            title: Text("Amistad"),
            onChanged: (value) {
              setState(
                () {
                  filtro.amistad = value;
                },
              );
            },
          );
        })),
        PopupMenuItem(child: StatefulBuilder(builder: (context, setState) {
          return SwitchListTile(
            value: filtro.deporte,
            title: Text("Deporte"),
            onChanged: (value) {
              setState(
                () {
                  filtro.deporte = value;
                },
              );
            },
          );
        })),
        PopupMenuItem(child: StatefulBuilder(builder: (context, setState) {
          return SwitchListTile(
            value: filtro.trabajo,
            title: Text("Trabajo"),
            onChanged: (value) {
              setState(
                () {
                  filtro.trabajo = value;
                },
              );
            },
          );
        })),
        PopupMenuItem(child: StatefulBuilder(builder: (context, setState) {
          return SwitchListTile(
            value: filtro.ninguno,
            title: Text("No etiquetados"),
            onChanged: (value) {
              setState(
                () {
                  filtro.ninguno = value;
                },
              );
            },
          );
        })),
      ],
    );
  }
}

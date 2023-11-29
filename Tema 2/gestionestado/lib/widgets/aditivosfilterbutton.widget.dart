// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../models/estadofiltro.class.dart';

class AditivosFilterButton extends StatelessWidget {
  const AditivosFilterButton({super.key});

  @override
  Widget build(BuildContext context) {
    EstadoFiltro filtro = Provider.of<EstadoFiltro>(context);

    return PopupMenuButton(
      icon: Icon(Icons.filter_alt),
      itemBuilder: (context) => [
        PopupMenuItem(child: StatefulBuilder(builder: (context, setState) {
          return SwitchListTile(
            value: filtro.saludable,
            title: Text("Saludable"),
            onChanged: (value) {
              setState(
                () {
                  filtro.saludable = value;
                },
              );
            },
          );
        })),
        PopupMenuItem(child: StatefulBuilder(builder: (context, setState) {
          return SwitchListTile(
            value: filtro.inofensivo,
            title: Text("Inofensivo"),
            onChanged: (value) {
              setState(
                () {
                  filtro.inofensivo = value;
                },
              );
            },
          );
        })),
        PopupMenuItem(child: StatefulBuilder(builder: (context, setState) {
          return SwitchListTile(
            value: filtro.precaucion,
            title: Text("Precaucion"),
            onChanged: (value) {
              setState(
                () {
                  filtro.precaucion = value;
                },
              );
            },
          );
        })),
        PopupMenuItem(child: StatefulBuilder(builder: (context, setState) {
          return SwitchListTile(
            value: filtro.peligroso,
            title: Text("Peligroso"),
            onChanged: (value) {
              setState(
                () {
                  filtro.peligroso = value;
                },
              );
            },
          );
        })),
      ],
    );
  }
}

// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:listadoaditivos/models/directorioaditivos.class.dart';
import 'package:listadoaditivos/widgets/aditivosfiltermenu.widget.dart';
import 'package:listadoaditivos/widgets/listaditivos.widget.dart';

class ListadoAditivosPage extends StatefulWidget {
  const ListadoAditivosPage({super.key});

  @override
  State<ListadoAditivosPage> createState() => _ListadoAditivosPageState();
}

class _ListadoAditivosPageState extends State<ListadoAditivosPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Listado Aditivos"),
      actions: [AditivosFilterMenuButton()],),
      body: ListAditivos(
        aditivos: aditivos.items,
      ),
    );
  }
}

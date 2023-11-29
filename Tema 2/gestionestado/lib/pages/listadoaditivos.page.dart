// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:listadoaditivos/widgets/listaditivos.widget.dart';

import '../widgets/aditivosfilterbutton.widget.dart';

class ListadoAditivosPage extends StatefulWidget {
  const ListadoAditivosPage({super.key});

  @override
  State<ListadoAditivosPage> createState() => _ListadoAditivosPageState();
}

class _ListadoAditivosPageState extends State<ListadoAditivosPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Listado Aditivos"),
        actions: [AditivosFilterButton()],
      ),
      body: ListAditivos(),
    );
  }
}

// ignore_for_file: prefer_const_constructors

import 'package:agenda/models/directoriocontactos.class.dart';
import 'package:agenda/widget/listacontactos.widget.dart';
import 'package:flutter/material.dart';

class ListadoContactoPage extends StatefulWidget {
  const ListadoContactoPage({super.key});

  @override
  State<ListadoContactoPage> createState() => _ListadoContactoPageState();
}

class _ListadoContactoPageState extends State<ListadoContactoPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("Agenda")),
        body: ListaContactos(contactos: contactos.items));
  }
}

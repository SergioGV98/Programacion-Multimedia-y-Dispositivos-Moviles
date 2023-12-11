// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sort_child_properties_last

import 'package:agenda/models/directoriocontactos.class.dart';
import 'package:agenda/widget/listacontactos.widget.dart';
import 'package:flutter/material.dart';

import '../widget/contactofiltrobutton.widget.dart';
import '../widget/menutabbar.widget.dart';
import 'contactoañadir.page.dart';
import 'listacontactosfavoritos.page.dart';

class ListadoContactoPage extends StatefulWidget {
  const ListadoContactoPage({super.key});

  @override
  State<ListadoContactoPage> createState() => _ListadoContactoPageState();
}

class _ListadoContactoPageState extends State<ListadoContactoPage> {
  bool _ordenDescendente = false;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        body: TabBarView(
          children: [
            ListaContactos(contactos: contactos.items, ordenDescendente: _ordenDescendente,),
            ListaContactosFavoritos(contactos: contactos.items, ordenDescendente: _ordenDescendente),
          ],
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButton: FloatingActionButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => Contactoadd()));
            },
            child: Icon(Icons.add),
            shape: BeveledRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(7)))),
        appBar: AppBar(
          title: Text("Agenda"),
          actions: [
            ContactFilterButton(),
            IconButton(
                onPressed: () {
                  setState(() {
                    _ordenDescendente = !_ordenDescendente;
                  });
                },
                icon: Icon(Icons.sort_by_alpha)),
          ],
        ),
        bottomNavigationBar: MenuTabBar(),
      ),
    );
  }
}

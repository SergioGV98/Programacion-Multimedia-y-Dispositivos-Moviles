import 'package:agenda/class/contacto.class.dart';
import 'package:agenda/widget/contactotile.widget.dart';
import 'package:flutter/material.dart';

class ListaContactos extends StatefulWidget {
  const ListaContactos({super.key, required this.contactos});

  final List<Contacto> contactos;

  @override
  State<ListaContactos> createState() => _ListaContactosState();
}

class _ListaContactosState extends State<ListaContactos> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: widget.contactos.length,
        itemBuilder: (context, index) => ContactoTile(
              contacto: widget.contactos[index],
            ));
  }
}

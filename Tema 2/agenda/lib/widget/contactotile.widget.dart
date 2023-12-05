// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import '../class/contacto.class.dart';

class ContactoTile extends StatelessWidget {
  final Contacto contacto;
  const ContactoTile({super.key, required this.contacto});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text("${contacto.name} ${contacto.surname}"),
      subtitle: Text(
        "${contacto.email}, ${contacto.phone}",
        overflow: TextOverflow.ellipsis,
      ),
      trailing: PopupMenuButton(
        itemBuilder: (BuildContext context) => [
          PopupMenuItem(
              child: ListTile(
                  onTap: () {},
                  contentPadding: EdgeInsets.all(0),
                  leading: Icon(Icons.remove_red_eye),
                  title: Text("Ver"))),
          PopupMenuItem(
              child: ListTile(
                  onTap: () {},
                  contentPadding: EdgeInsets.all(0),
                  leading: Icon(Icons.edit),
                  title: Text("Editar"))),
          PopupMenuItem(
              child: ListTile(
                  onTap: () {},
                  contentPadding: EdgeInsets.all(0),
                  leading: Icon(Icons.delete),
                  title: Text("Eliminar")))
        ],
      ),
    );
  }
}

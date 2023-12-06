// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import '../class/contacto.class.dart';

class ContactoTile extends StatelessWidget {
  final Contacto contacto;
  const ContactoTile({super.key, required this.contacto});

  @override
  Widget build(BuildContext context) {
    IconData icono;
    if (contacto.labels!.contains("Amistad")) {
      icono = Icons.emoji_emotions;
    } else if (contacto.labels!.contains("Deporte")) {
      icono = Icons.fitness_center;
    } else if (contacto.labels!.contains("Familia")) {
      icono = Icons.family_restroom;
    } else if (contacto.labels!.contains("Trabajo")){
      icono = Icons.business;
    } else {
      icono = Icons.question_mark;
    }

    return ListTile(
      leading: Icon(icono),
      title: Row(
        children: [
          Text(
            "${contacto.name} ${contacto.surname}",
            overflow: TextOverflow.ellipsis,
          ),
          SizedBox(width: 10),
          if (contacto.isFavorite!) Icon(Icons.star, color: Colors.yellow)
        ],
      ),
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

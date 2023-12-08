// ignore_for_file: public_member_api_docs, sort_constructors_first
// ignore_for_file: prefer_const_constructors, sort_child_properties_last, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

import 'package:agenda/class/contacto.class.dart';

class ContactInfo extends StatefulWidget {
  final Contacto contacto;

  const ContactInfo({required this.contacto, Key? key}) : super(key: key);

  @override
  State<ContactInfo> createState() => _ContactInfoState();
}

class _ContactInfoState extends State<ContactInfo> {
  late final Contacto contacto;

  @override
  void initState() {
    super.initState();
    contacto = widget.contacto;
  }

  @override
  Widget build(BuildContext context) {
    IconData icono;
    if (contacto.labels!.contains("Amistad")) {
      icono = Icons.emoji_emotions;
    } else if (contacto.labels!.contains("Deporte")) {
      icono = Icons.fitness_center;
    } else if (contacto.labels!.contains("Familia")) {
      icono = Icons.family_restroom;
    } else if (contacto.labels!.contains("Trabajo")) {
      icono = Icons.business;
    } else {
      icono = Icons.question_mark;
    }

    return Scaffold(
      backgroundColor: Color.fromARGB(171, 39, 39, 39),
      appBar: AppBar(actions: [
        IconButton(onPressed: () {}, icon: Icon(Icons.edit)),
        IconButton(onPressed: () {}, icon: Icon(Icons.star_border))
      ]),
      body: Column(children: [
        Padding(padding: EdgeInsets.only(top: 20)),
        Container(
            width: 180,
            height: 180,
            decoration: BoxDecoration(
                shape: BoxShape.circle, color: Color.fromARGB(83, 0, 0, 0)),
            child: Icon(
              icono,
              size: 100,
              color: Colors.grey,
            )),
        Padding(
            padding: EdgeInsets.only(top: 16),
            child: Text(
              "${contacto.name} ${contacto.surname}",
              style: TextStyle(color: Colors.white, fontSize: 30),
            )),
        Padding(padding: EdgeInsets.only(top: 10)),
        Divider(
          color: Colors.grey,
        ),
        Padding(
            padding: const EdgeInsets.only(left: 18, top: 7),
            child: Row(children: [
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                Text("Correo electrónico",
                    style: TextStyle(color: Colors.white, fontSize: 16)),
                Text(contacto.email,
                    style: TextStyle(color: Colors.white, fontSize: 23))
              ]),
              SizedBox(width: 16),
              Icon(
                Icons.email,
                color: Colors.white,
              )
            ])),
        Divider(
          color: Colors.grey,
        ),
        Padding(
            padding: const EdgeInsets.only(left: 18, top: 7),
            child: Row(children: [
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                Text("Teléfono",
                    style: TextStyle(color: Colors.white, fontSize: 16)),
                Text(contacto.phone.toString(),
                    style: TextStyle(color: Colors.white, fontSize: 23))
              ]),
              SizedBox(width: 116),
              Icon(
                Icons.phone,
                color: Colors.white,
              )
            ])),
        Divider(
          color: Colors.grey,
        ),
        Padding(
            padding: const EdgeInsets.only(left: 18, top: 7),
            child: Row(children: [
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                Text("Nacimiento",
                    style: TextStyle(color: Colors.white, fontSize: 16)),
                Text(contacto.birthdate.toString(),
                    style: TextStyle(color: Colors.white, fontSize: 23))
              ]),
              Padding(padding: EdgeInsets.only(left: 120)),
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                Text("Edad",
                    style: TextStyle(color: Colors.white, fontSize: 16)),
                Text("37", style: TextStyle(color: Colors.white, fontSize: 23))
              ]),
            ])),
        Divider(
          color: Colors.grey,
        ),
        Padding(
            padding: const EdgeInsets.only(left: 18, top: 7),
            child: Row(children: [
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                Text("Etiquetas",
                    style: TextStyle(color: Colors.white, fontSize: 16)),
                Text(contacto.labels.toString(),
                    style: TextStyle(color: Colors.white, fontSize: 23))
              ]),
            ])),
        Divider(
          color: Colors.grey,
        ),
        Padding(padding: EdgeInsets.only(top: 10)),
        Text("Added on 2023-08-04 10:43",
            style: TextStyle(color: Colors.white, fontSize: 15))
      ]),
    );
  }
}

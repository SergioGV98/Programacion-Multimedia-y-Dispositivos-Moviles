// ignore_for_file: camel_case_types, prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_print, unused_element

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../data/contactos.json.dart';
import '../models/contactosprovider.class.dart';

class Contactoadd extends StatefulWidget {
  const Contactoadd({super.key});

  @override
  State<Contactoadd> createState() => _ContactoaddState();
}

class _ContactoaddState extends State<Contactoadd> {
  final _nombreController = TextEditingController();
  final _apellidosController = TextEditingController();
  final _telefonoController = TextEditingController();
  final _emailController = TextEditingController();
  final _fechaNacimientoController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () {
              if (_formKey.currentState?.validate() ?? false) {
                _agregarContacto();
                print('Nombre: ${_nombreController.text}');
                print('Apellidos: ${_apellidosController.text}');
                print('Teléfono: ${_telefonoController.text}');
                print('Email: ${_emailController.text}');
                print(
                    'Fecha de nacimiento: ${_fechaNacimientoController.text}');
                print(contactosJson.length);
                Navigator.pop(context);
              }
            },
            icon: Icon(Icons.check),
          )
        ],
        title: Text("Nuevo contacto"),
        centerTitle: true,
      ),
      backgroundColor: Color.fromARGB(171, 39, 39, 39),
      body: Form(
        key: _formKey,
        child: Column(
          children: [
            TextFormField(
              controller: _nombreController,
              decoration: InputDecoration(
                border: UnderlineInputBorder(
                  borderSide:
                      BorderSide(color: Colors.white, style: BorderStyle.solid),
                ),
                labelText: "Nombre",
                labelStyle: TextStyle(color: Colors.white),
              ),
              maxLines: 1,
              style: TextStyle(color: Colors.white),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Por favor, introduce un nombre.';
                }
                return null;
              },
            ),
            Divider(
              color: Colors.grey,
            ),
            Padding(padding: EdgeInsets.only(top: 10)),
            TextFormField(
              controller: _apellidosController,
              decoration: InputDecoration(
                border: UnderlineInputBorder(
                  borderSide:
                      BorderSide(color: Colors.white, style: BorderStyle.solid),
                ),
                labelText: "Apellidos",
                labelStyle: TextStyle(color: Colors.white),
              ),
              maxLines: 1,
              style: TextStyle(color: Colors.white),
              validator: (value) {
                return null;
              },
            ),
            Divider(
              color: Colors.grey,
            ),
            Padding(padding: EdgeInsets.only(top: 10)),
            TextFormField(
              controller: _telefonoController,
              decoration: InputDecoration(
                border: UnderlineInputBorder(
                  borderSide:
                      BorderSide(color: Colors.white, style: BorderStyle.solid),
                ),
                labelText: "Teléfono",
                labelStyle: TextStyle(color: Colors.white),
              ),
              maxLines: 1,
              style: TextStyle(color: Colors.white),
              validator: (value) {
                return null;
              },
            ),
            Divider(
              color: Colors.grey,
            ),
            Padding(padding: EdgeInsets.only(top: 10)),
            TextFormField(
              controller: _emailController,
              decoration: InputDecoration(
                border: UnderlineInputBorder(
                  borderSide:
                      BorderSide(color: Colors.white, style: BorderStyle.solid),
                ),
                labelText: "Email",
                labelStyle: TextStyle(color: Colors.white),
              ),
              maxLines: 1,
              style: TextStyle(color: Colors.white),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Por favor, introduce un email.';
                }
                final emailRegex = RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$');
                if (!emailRegex.hasMatch(value)) {
                  return 'Por favor, introduce un email válido.';
                }
                return null;
              },
            ),
            Divider(
              color: Colors.grey,
            ),
            Padding(padding: EdgeInsets.only(top: 10)),
            TextFormField(
              controller: _fechaNacimientoController,
              decoration: InputDecoration(
                border: UnderlineInputBorder(
                  borderSide:
                      BorderSide(color: Colors.white, style: BorderStyle.solid),
                ),
                labelText: "Fecha de nacimiento",
                labelStyle: TextStyle(color: Colors.white),
              ),
              maxLines: 1,
              style: TextStyle(color: Colors.white),
              validator: (value) {
                return null;
              },
            ),
            Divider(
              color: Colors.grey,
            ),
          ],
        ),
      ),
    );
  }

  void _agregarContacto() {
    final nuevoContacto = {
      "id": contactosJson.length + 1,
      "nombre": _nombreController.text,
      "apellido": _apellidosController.text,
      "email": _emailController.text,
      "telefono": _telefonoController.text,
      "cumpleaños": _fechaNacimientoController.text,
      "etiquetas": [],
      "favorito": false,
    };

    Provider.of<ContactosProvider>(context, listen: false)
        .agregarContacto(nuevoContacto);
  }
}

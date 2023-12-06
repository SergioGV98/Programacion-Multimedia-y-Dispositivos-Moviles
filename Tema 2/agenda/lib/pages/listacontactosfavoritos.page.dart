import 'package:flutter/material.dart';

import '../class/contacto.class.dart';
import '../widget/contactotile.widget.dart';

class ListaContactosFavoritos extends StatefulWidget {
  const ListaContactosFavoritos({super.key, required this.contactos});

  final List<Contacto> contactos;

  @override
  State<ListaContactosFavoritos> createState() => _ListaContactosState();
}

class _ListaContactosState extends State<ListaContactosFavoritos> {
  @override
  Widget build(BuildContext context) {
    final List<Contacto> contactosFavoritos = widget.contactos.where((contacto) => contacto.isFavorite == true).toList();

    return ListView.builder(
      itemCount: contactosFavoritos.length,
      itemBuilder: (context, index) => ContactoTile(contacto: contactosFavoritos[index]),
    );
  }
}

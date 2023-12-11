import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../class/contacto.class.dart';
import '../models/estadofiltro.class.dart';
import '../widget/contactotile.widget.dart';

class ListaContactosFavoritos extends StatefulWidget {
  const ListaContactosFavoritos(
      {super.key, required this.contactos, required this.ordenDescendente});

  final List<Contacto> contactos;
  final bool ordenDescendente;

  @override
  State<ListaContactosFavoritos> createState() => _ListaContactosState();
}

class _ListaContactosState extends State<ListaContactosFavoritos> {
  late EstadoFiltro filtro;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final List<Contacto> contactosFavoritos = widget.contactos
        .where((contacto) => contacto.isFavorite == true)
        .toList();

    filtro = Provider.of<EstadoFiltro>(context, listen: true);

    List<Contacto> contactosAMostrar = contactosFavoritos
        .where((a) =>
            a.labels!.contains("Familia") && filtro.familia ||
            a.labels!.contains("Amistad") && filtro.amistad ||
            a.labels!.contains("Deporte") && filtro.deporte ||
            a.labels!.contains("Trabajo") && filtro.trabajo ||
            a.labels!.contains("No etiquetados") && filtro.ninguno)
        .toList();

    if (widget.ordenDescendente) {
      contactosAMostrar.sort((a, b) => b.name.compareTo(a.name));
    } else {
      contactosAMostrar.sort((a, b) => a.name.compareTo(b.name));
    }

    return ListView.builder(
      itemCount: contactosAMostrar.length,
      itemBuilder: (context, index) {
        final Contacto contacto = contactosAMostrar[index];
        return ContactoTile(contacto: contacto);
      },
    );
  }
}

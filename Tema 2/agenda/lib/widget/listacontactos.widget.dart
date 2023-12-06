import 'package:agenda/class/contacto.class.dart';
import 'package:agenda/models/directoriocontactos.class.dart';
import 'package:agenda/models/estadofiltro.class.dart';
import 'package:agenda/widget/contactotile.widget.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ListaContactos extends StatefulWidget {
  const ListaContactos({super.key, required this.contactos});

  final List<Contacto> contactos;

  @override
  State<ListaContactos> createState() => _ListaContactosState();
}

class _ListaContactosState extends State<ListaContactos> {
  List<Contacto> get contactos =>
      Provider.of<DirectorioContactos>(context, listen: false).items;

  late EstadoFiltro filtro;

  @override
  void initState() {
    super.initState();
    filtro = Provider.of<EstadoFiltro>(context, listen: false);
  }

  @override
  Widget build(BuildContext context) {
    return ListenableBuilder(
        listenable: filtro,
        builder: (context, child) {
          List<Contacto> contactosAMostrar = contactos
              .where((a) =>
                  a.labels!.contains("Familia") && filtro.familia ||
                  a.labels!.contains("Amistad") && filtro.amistad ||
                  a.labels!.contains("Deporte") && filtro.deporte ||
                  a.labels!.contains("Trabajo") && filtro.trabajo ||
                  a.labels!.contains("No etiquetados") && filtro.ninguno)
              .toList();
          return ListView.builder(
            itemCount: contactosAMostrar.length,
            itemBuilder: (context, index) =>
                ContactoTile(contacto: contactosAMostrar[index]),
          );
        });
  }
}

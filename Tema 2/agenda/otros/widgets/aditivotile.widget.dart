// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import '../modals/infoaditivo.dialog.dart';
import '../modals/mensaje.snackbar.dart';
import '../models/aditivo.class.dart';
import 'iconopeligrosidad.widget.dart';

class AditivoTile extends StatelessWidget {
  final Aditivo aditivo;

  const AditivoTile({super.key, required this.aditivo});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () {
        mostrarInformacionAditivo(context, aditivo);
      },
      leading: IconoPeligrosidad(aditivo.peligrosidad),
      title: Text(aditivo.codigo),
      subtitle: Text(
        aditivo.nombre,
        overflow: TextOverflow.ellipsis,
      ),
      trailing: PopupMenuButton(
        itemBuilder: (BuildContext context) => [
          PopupMenuItem(
              child: ListTile(
                  onTap: () {
                    mostrarMensaje(context, "Editando ${aditivo.codigo}");
                    Navigator.of(context).pop();
                  },
                  contentPadding: EdgeInsets.all(0),
                  leading: Icon(Icons.edit),
                  title: Text("Editar"))),
          PopupMenuItem(
              child: ListTile(
                  onTap: () {
                    mostrarMensaje(context, "Eliminando ${aditivo.codigo}");
                    Navigator.of(context).pop();
                  },
                  contentPadding: EdgeInsets.all(0),
                  leading: Icon(Icons.delete),
                  title: Text("Eliminar")))
        ],
      ),
    );
  }
}

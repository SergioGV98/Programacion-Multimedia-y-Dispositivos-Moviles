// ignore_for_file: prefer_const_constructors, use_build_context_synchronously

import 'package:flutter/material.dart';
import 'package:listadoaditivos/pages/detalleaditivo.page.dart';
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
        /*mostrarInformacionAditivo(context, aditivo);*/
        _mostrarDetalleAditivo(context);
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

  void _mostrarDetalleAditivo(BuildContext context) async {
    bool? resultado = await Navigator.of(context).push(MaterialPageRoute<bool>(
        builder: (_) => DetalleAditivoPage(aditivo: aditivo)));

    if (resultado ?? false) {
      ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text("Los cambios se han guardado correctamente")));
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text("No se han guardado los cambios")));
    }
  }
}

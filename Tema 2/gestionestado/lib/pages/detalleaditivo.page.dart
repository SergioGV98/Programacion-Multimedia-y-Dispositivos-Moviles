// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:listadoaditivos/models/aditivo.class.dart';

class DetalleAditivoPage extends StatefulWidget {
  const DetalleAditivoPage({super.key, required this.aditivo});

  final Aditivo aditivo;
  @override
  State<DetalleAditivoPage> createState() => _DetalleAditivoPageState();
}

class _DetalleAditivoPageState extends State<DetalleAditivoPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Detalle de aditivo")),
      body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              widget.aditivo.toJson().toString(),
              textAlign: TextAlign.center,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton.icon(
                    onPressed: () {
                      _guardarCambios(context);
                    },
                    icon: Icon(Icons.save),
                    label: Text("Guardar")),
                ElevatedButton.icon(
                    onPressed: () {
                      _cancelarCambios(context);
                    },
                    icon: Icon(Icons.cancel),
                    label: Text("Cancelar")),
              ],
            )
          ]),
    );
  }

  void _guardarCambios(BuildContext context) {
    Navigator.of(context).pop<bool>(true);
  }

  void _cancelarCambios(BuildContext context) {
    Navigator.of(context).pop<bool>(false);
  }
}

// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import 'aditivo.class.dart';
import 'commonbody.widget.dart';

class Ejercicio5 extends StatefulWidget {
  const Ejercicio5({Key? key}) : super(key: key);

  @override
  State<Ejercicio5> createState() => _Ejercicio5State();
}

class _Ejercicio5State extends State<Ejercicio5> {
  List<Aditivo> todosAditivos = aditivos.items;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Ejercicio 5"),
        centerTitle: true,
      ),
      body: CommonBody(
        child: Container(
          margin: EdgeInsets.all(10),
          child: ListView(
            children: todosAditivos.map((aditivo) {
              return ListTile(
                title: Text(aditivo.codigo),
                subtitle: Text(aditivo.nombre),
                leading: _buildAditivoSwitch(aditivo.peligrosidad),
                trailing: _buildPopupMenuButton(aditivo),
                onTap: () {
                  _mostrarDetalleAditivo(context, aditivo);
                },
              );
            }).toList(),
          ),
        ),
      ),
    );
  }

  void _mostrarDetalleAditivo(BuildContext context, Aditivo aditivo) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(aditivo.codigo),
              Container(
                child: _buildAditivoSwitch(aditivo.peligrosidad),
              ),
            ],
          ),
          content: SizedBox(
            width: double.maxFinite,
            child: ListView(
              shrinkWrap: true,
              children: [
                ListTile(
                  leading: Icon(Icons.book),
                  title: Text("Nombre"),
                  subtitle: Text(aditivo.nombre),
                ),
                ListTile(
                  leading: Icon(Icons.comment),
                  title: Text("Comentario"),
                  subtitle: Text(aditivo.comentario),
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  Widget _buildAditivoSwitch(Peligrosidad peligrosidad) {
    IconData icono;
    Color color;

    switch (peligrosidad) {
      case Peligrosidad.saludable:
        icono = Icons.favorite;
        color = Colors.blue;
        break;
      case Peligrosidad.inofensivo:
        icono = Icons.sentiment_satisfied;
        color = Colors.green;
        break;
      case Peligrosidad.precaucion:
        icono = Icons.warning;
        color = Colors.orange;
        break;
      case Peligrosidad.peligroso:
        icono = Icons.dangerous;
        color = Colors.red;
        break;
      default:
        icono = Icons.help;
        color = Colors.grey;
    }

    return Icon(icono, color: color);
  }

  Widget _buildPopupMenuButton(Aditivo aditivo) {
    return PopupMenuButton(
      itemBuilder: (context) => <PopupMenuEntry>[
        PopupMenuItem(
          value: "editar",
          child: ListTile(
            leading: Icon(Icons.edit),
            title: Text("Editar"),
          ),
        ),
        PopupMenuItem(
          value: "eliminar",
          child: ListTile(
            leading: Icon(Icons.delete),
            title: Text("Eliminar"),
          ),
        ),
      ],
      onSelected: (value) {
        _showSnackBar(context, "Opción seleccionada: $value");
      },
    );
  }

  void _showSnackBar(BuildContext context, String mensaje) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(mensaje),
        duration: Duration(seconds: 2),
      ),
    );
  }
}

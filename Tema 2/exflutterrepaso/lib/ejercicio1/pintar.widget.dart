// ignore_for_file: prefer_const_constructors, sort_child_properties_last

import 'package:flutter/material.dart';

class Pintar extends StatefulWidget {
  final String nombre;
  final Color textColor;
  final Color backgroundColor;
  final BoxDecoration decoracion;
  final Widget? widgetImagen;

  const Pintar(
      {super.key,
      required this.nombre,
      required this.textColor,
      required this.backgroundColor,
      required this.decoracion,
      this.widgetImagen});

  @override
  State<Pintar> createState() => _PintarState();
}

class _PintarState extends State<Pintar> {
  @override
  Widget build(BuildContext context) {
    //final nombre = widget.nombre;  Otra forma de llamar al parametro

    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                  decoration: widget.decoracion,
                  child: Text(widget.nombre,
                      style: TextStyle(color: widget.textColor),
                      overflow: TextOverflow.ellipsis)),
              if (widget.widgetImagen != null)
                Container(
                  child: widget.widgetImagen!,
                  margin: EdgeInsets.only(top: 22),
                )
            ],
          ),
        ),
        backgroundColor: widget.backgroundColor,
      ),
    );
  }
}

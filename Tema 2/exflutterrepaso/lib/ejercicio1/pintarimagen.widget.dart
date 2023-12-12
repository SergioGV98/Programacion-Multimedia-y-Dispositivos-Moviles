// ignore_for_file: camel_case_types, sort_child_properties_last, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class pintarImagen extends StatefulWidget {
  final String url;
  final BoxShadow? boxShadow;

  const pintarImagen({super.key, required this.url, this.boxShadow});

  @override
  State<pintarImagen> createState() => _pintarImagenState();
}

class _pintarImagenState extends State<pintarImagen> {
  @override
 Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(width: 2),
        boxShadow: widget.boxShadow != null ? [widget.boxShadow!] : [],
      ),
      child: Image.asset(widget.url),
    );
  }
}
import 'package:flutter/material.dart';
import '../models/aditivo.class.dart';
import 'aditivotile.widget.dart';

class ListAditivos extends StatefulWidget {
  const ListAditivos({super.key, required this.aditivos});

  final List<Aditivo> aditivos;

  @override
  State<ListAditivos> createState() => _ListAditivosState();
}

class _ListAditivosState extends State<ListAditivos> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: widget.aditivos.length,
      itemBuilder: (context, index) =>
          AditivoTile(aditivo: widget.aditivos[index]),
    );
  }
}

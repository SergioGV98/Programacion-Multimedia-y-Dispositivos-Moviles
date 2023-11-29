import 'package:flutter/material.dart';
import 'package:listadoaditivos/models/directorioaditivos.class.dart';
import 'package:listadoaditivos/models/estadofiltro.class.dart';
import 'package:listadoaditivos/models/peligrosidad.enum.dart';
import 'package:provider/provider.dart';
import '../models/aditivo.class.dart';
import 'aditivotile.widget.dart';

class ListAditivos extends StatefulWidget {
  const ListAditivos({super.key});

  @override
  State<ListAditivos> createState() => _ListAditivosState();
}

class _ListAditivosState extends State<ListAditivos> {
  List<Aditivo> get aditivos =>
      Provider.of<DirectorioAditivos>(context, listen: false).items;

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
          List<Aditivo> aditivosAMostrar = aditivos
              .where((a) =>
                  a.peligrosidad == Peligrosidad.inofensivo &&
                      filtro.inofensivo ||
                  a.peligrosidad == Peligrosidad.saludable &&
                      filtro.saludable ||
                  a.peligrosidad == Peligrosidad.precaucion &&
                      filtro.precaucion ||
                  a.peligrosidad == Peligrosidad.peligroso && filtro.peligroso)
              .toList();
          return ListView.builder(
            itemCount: aditivosAMostrar.length,
            itemBuilder: (context, index) =>
                AditivoTile(aditivo: aditivosAMostrar[index]),
          );
        });
  }
}

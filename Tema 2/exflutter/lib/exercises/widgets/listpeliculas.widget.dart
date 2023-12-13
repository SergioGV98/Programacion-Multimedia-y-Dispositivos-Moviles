// ignore_for_file: non_constant_identifier_names, avoid_types_as_parameter_names, prefer_const_constructors

import 'package:exflutter/_data/pelicula.class.dart';
import 'package:exflutter/_data/peliculas.data.dart';
import 'package:flutter/material.dart';

class ListPeliculas extends StatefulWidget {
  const ListPeliculas({Key? key}) : super(key: key);
  List<Pelicula> get pelicula => generarListaDePeliculas();
  @override
  State<ListPeliculas> createState() => _ListPeliculasState();
}

class _ListPeliculasState extends State<ListPeliculas> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: widget.pelicula.length,
        itemBuilder: (context, index) =>
            PeliculaTile(pelicula: widget.pelicula[index]));
  }
}

class PeliculaTile extends StatelessWidget {
  final Pelicula pelicula;

  const PeliculaTile({super.key, required this.pelicula});

  @override
  Widget build(BuildContext context) {
    return ListTile(
        leading: Icon(Icons.movie),
        title: Text(pelicula.titulo!),
        subtitle: Row(
          children: [
            Text(pelicula.director != null && pelicula.director!.isNotEmpty
                ? "${pelicula.director!}, "
                : ""),
            Text(pelicula.fechaEstreno != null
                ? pelicula.fechaEstreno!.toIso8601String().substring(0, 4)
                : ""),
            Text(pelicula.fechaEstreno == null && pelicula.director == null
                ? "Sin detalles"
                : ""),
            SizedBox(
              width: 20,
            ),
            Container(
                color: const Color.fromARGB(88, 155, 39, 176),
                child: Text(
                    pelicula.genero != null
                        ? pelicula.genero.toString().substring(15)
                        : "",
                    overflow: TextOverflow.ellipsis))
          ],
        ));
  }
}

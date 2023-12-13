// ignore_for_file: prefer_const_constructors, unused_import
import 'package:exflutter/exercises/4.page.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '_data/peliculas.data.dart';
import '_data/pelicula.class.dart';
import 'exercises/1a.page.dart';
import 'exercises/1b.page.dart';
import 'exercises/1c.page.dart';
import 'exercises/2a.page.dart';
import 'exercises/2b.page.dart';
import 'exercises/2c.page.dart';
import 'exercises/3.page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Provider<List<Pelicula>>(
      create: (_) => generarListaDePeliculas(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Examen de Flutter',
        theme: ThemeData.light(
          useMaterial3: true,
        ),
        //home: E1aPage(),
        //home: E1bPage(),
        //home: E1cPage(),
        //home: E2aPage(),
        //home: E2bPage(),
        //home: E2cPage(),
        //home: E3Page(),
        //home: E4Page()
      ),
    );
  }
}

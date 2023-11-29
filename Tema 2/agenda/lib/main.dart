// ignore_for_file: prefer_const_constructors

import 'package:agenda/pages/listadocontactos.page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Agenda',
        theme: ThemeData(
          colorScheme:
              ColorScheme.fromSeed(seedColor: Color.fromARGB(255, 252, 78, 55)),
          useMaterial3: false,
        ),
        home: ListadoContactoPage());
  }
}

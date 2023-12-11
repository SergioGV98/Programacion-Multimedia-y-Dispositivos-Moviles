// ignore_for_file: prefer_const_constructors

import 'package:agenda/models/directoriocontactos.class.dart';
import 'package:agenda/models/estadofiltro.class.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'data/contactos.json.dart';
import 'models/contactosprovider.class.dart';
import 'pages/listadocontactos.page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        Provider<DirectorioContactos>(
            create: (_) => DirectorioContactos.fromJson(contactosJson)),
        ChangeNotifierProvider<EstadoFiltro>(create: (_) => EstadoFiltro()),
        ChangeNotifierProvider<ContactosProvider>(create: (_) => ContactosProvider())
      ],
      child: MaterialApp(
          title: 'Agenda',
          theme: ThemeData(
            colorScheme: ColorScheme.fromSeed(
                seedColor: Color.fromARGB(255, 252, 78, 55)),
            useMaterial3: false,
          ),
          home: SafeArea(child: ListadoContactoPage())),
    );
  }
}

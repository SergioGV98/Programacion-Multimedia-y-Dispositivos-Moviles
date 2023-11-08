// ignore_for_file: prefer_const_constructors, sort_child_properties_last, prefer_final_fields

import 'package:clase1/midrawer.widget.dart';
import 'package:flutter/material.dart';

class OpcionMenu {
  IconData icono;
  String label;
  Function() onTap;
  OpcionMenu({required this.icono, required this.label, required this.onTap});
}

class ScaffoldEjemplo1 extends StatefulWidget {
  const ScaffoldEjemplo1({super.key});

  @override
  State<ScaffoldEjemplo1> createState() => _ScaffoldEjemplo1State();
}

class _ScaffoldEjemplo1State extends State<ScaffoldEjemplo1> {
  FloatingActionButtonLocation _posicionBoton =
      FloatingActionButtonLocation.endFloat;

  @override
  Widget build(BuildContext context) {
    List<OpcionMenu> opciones = [
      OpcionMenu(
          icono: Icons.home,
          label: "Opcion 1",
          onTap: () {
            print("Opcion 1");
          }),
      OpcionMenu(
          icono: Icons.list,
          label: "Opcion 2",
          onTap: () {
            print("Opcion 2");
          }),
      OpcionMenu(
          icono: Icons.euro_rounded,
          label: "Opcion 3",
          onTap: () {
            print("Opcion 3");
          })
    ];

    return MaterialApp(
        home: DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text("Ejemplo Scaffold"),
          actions: [
            IconButton(
                onPressed: () {
                  print("Me siento presionado");
                },
                icon: Icon(Icons.ac_unit)),
            IconButton(
                onPressed: () {
                  print("Me siento presionado");
                },
                icon: Icon(Icons.ac_unit)),
            PopupMenuButton(
              itemBuilder: (context) => opciones
                  .map(
                    (op) => PopupMenuItem(
                      child: ListTile(
                          contentPadding: EdgeInsets.all(0),
                          leading: Icon(op.icono),
                          title: Text(op.label)),
                      onTap: op.onTap(),
                    ),
                  )
                  .toList(),
            )
          ],
          bottom: const TabBar(
            tabs: [
              Tab(icon: Icon(Icons.directions_car)),
              Tab(icon: Icon(Icons.directions_transit)),
              Tab(icon: Icon(Icons.directions_bike)),
            ],
          ),
        ),
        body: Container(
          alignment: Alignment.center,
          child: Column(children: [
            TextButton(
                onPressed: () {
                  setState(() {
                    _posicionBoton = FloatingActionButtonLocation.endFloat;
                  });
                },
                child: Text("TextButton")),
            ElevatedButton(
                onPressed: () {
                  setState(() {
                    _posicionBoton = FloatingActionButtonLocation.centerFloat;
                  });
                },
                child: Text("ElevatedButton"))
          ]),
        ),
        drawer: midrawer(),
        floatingActionButtonLocation: _posicionBoton,
        floatingActionButton: FloatingActionButton(
            onPressed: () {}, child: Icon(Icons.arrow_right)),
      ),
    ));
  }
}

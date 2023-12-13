// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class E2aPage extends StatefulWidget {
  const E2aPage({super.key});

  @override
  State<E2aPage> createState() => _E2aPageState();
}

class _E2aPageState extends State<E2aPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Column(children: [
        Expanded(
            flex: 1,
            child: Container(
              alignment: Alignment.center,
              color: Colors.red,
              child: Text("Zona 1",
                  style: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                  )),
            )),
        Expanded(
            flex: 3,
            child: Container(
              alignment: Alignment.center,
              color: Colors.blue,
              child: Text("Zona 2",
                  style: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                  )),
            )),
        Expanded(
            flex: 2,
            child: Container(
              alignment: Alignment.center,
              color: Colors.green,
              child: Text("Zona 3",
                  style: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                  )),
            ))
      ]),
    ));
  }
}

// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class Demo1Page extends StatefulWidget {
  const Demo1Page({super.key});

  @override
  State<Demo1Page> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<Demo1Page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: Column(
      children: [
        TextoResaltado(texto: "Mi primera aplicacion Flutter"),
        Image.asset("images/img1.jpg"),
        TextoResaltado(texto: "Otro texto"),
        Icon(Icons.access_alarm, size: 48.0, color: Colors.indigo)
      ],
    )));
  }
}

class TextoResaltado extends StatelessWidget {
  final String texto;
  const TextoResaltado({super.key, required this.texto});

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
            border: Border.all(color: Colors.red), color: Colors.lime),
        margin: EdgeInsets.all(20),
        padding: EdgeInsets.all(20),
        child: Text(
          texto,
          style: TextStyle(color: Colors.purple, fontSize: 30),
        ));
  }
}

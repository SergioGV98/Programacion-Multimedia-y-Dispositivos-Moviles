// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sort_child_properties_last, camel_case_types

import 'package:flutter/material.dart';

class Pintar2 extends StatefulWidget {
  const Pintar2({super.key});

  @override
  State<Pintar2> createState() => _Pintar2State();
}

class _Pintar2State extends State<Pintar2> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Expanded(
              child: Row(
                children: [
                  celda(
                    flex: 1,
                    color: Colors.red,
                    url: "images/anime1.jpg",
                    text: "HOLA",
                  ),
                  celda(
                    flex: 2,
                    color: Colors.yellow,
                    url: "images/anime2.jpg",
                  ),
                ],
              ),
            ),
            Expanded(
                flex: 3,
                child: Column(children: [
                  Expanded(
                      child: Row(children: [
                    celda(
                      flex: 1,
                      color: Colors.red,
                    ),
                    celda(
                      flex: 1,
                      color: Colors.blue,
                      url: "images/anime1.jpg",
                    )
                  ])),
                  Expanded(
                      child: Row(children: [
                    celda(
                      flex: 1,
                      color: Colors.green,
                      url: "images/anime3.jpg",
                    ),
                    celda(
                      flex: 1,
                      color: Colors.pink,
                    )
                  ]))
                ])),
            celda(
              flex: 1,
              color: Colors.blue,
              text: "HADAADAD",
            ),
          ],
        ),
      ),
    );
  }
}

class celda extends StatelessWidget {
  final int flex;
  final Color color;
  final String? url;
  final String? text;
  const celda({
    super.key,
    required this.flex,
    required this.color,
    this.url,
    this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
        flex: flex,
        child: Container(
            decoration: BoxDecoration(
              color: color,
              image: url != null && url!.isNotEmpty
                  ? DecorationImage(
                      image: AssetImage(url!),
                      fit: BoxFit.cover,
                    )
                  : null,
            ),
            child: text != null ? Center( child: Text( text!, style: TextStyle(color: Colors.black, fontSize: 50))) : null));
  }
}

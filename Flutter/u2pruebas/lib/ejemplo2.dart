// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class Demo2Page extends StatelessWidget {
  const Demo2Page({super.key});

  Widget celda(String texto, Color color) {
    return Container(
        color: color, alignment: Alignment.center, child: Text(texto));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: Column(
      children: [
        Expanded(
            child: Row(
          children: [
            Expanded(
              child: Column(
                children: [
                  Expanded(child: celda("F0C0", Colors.yellow)),
                ],
              ),
            )
          ],
        )),
        Expanded(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Expanded(
                child: celda("F1C1", Colors.blue),
              ),
              Expanded(
                child: celda("F1C2", Colors.red),
              )
            ],
          ),
        ),
        Expanded(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Expanded(
                child: celda("F2C1", Colors.lime),
              ),
              Expanded(
                child: celda("F2C2", Colors.orange),
              )
            ],
          ),
        ),
        Expanded(
            child: Row(
          children: [
            Expanded(
                child: Row(
              children: [
                Expanded(
                  child: Column(
                    children: [
                      Expanded(child: celda("F3C0", Colors.purple)),
                    ],
                  ),
                )
              ],
            )),
          ],
        )),
      ],
    )));
  }
}

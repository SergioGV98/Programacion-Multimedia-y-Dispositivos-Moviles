// ignore_for_file: use_key_in_widget_constructors, sort_child_properties_last, prefer_const_constructors

import 'package:flutter/material.dart';

Widget celda(Widget contenido, Color color) => Container(
      color: color,
      alignment: Alignment.center,
      child: contenido,
    );

Text texto(String texto, [double size = 30]) => Text(
      texto,
      textAlign: TextAlign.center,
      style: TextStyle(fontSize: size),
    );

class Layout1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        children: [
          Expanded(child: celda(texto("F1"), Colors.red)),
          Expanded(child: celda(texto("F2"), Colors.blue)),
          Expanded(child: celda(texto("F3"), Colors.yellow)),
        ],
      ),
    );
  }
}

class Layout2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        children: [
          Expanded(child: celda(texto("F1"), Colors.red)),
          Expanded(child: celda(texto("F2C1\nflex=3"), Colors.blue), flex: 3),
          Expanded(child: celda(texto("F3"), Colors.yellow)),
        ],
      ),
    );
  }
}

class Layout3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Column(children: [
      Expanded(
        child: celda(
          Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              celda(
                  Container(
                    padding: EdgeInsets.all(30),
                    child: Text("F1C1\nMi fila está en un\nContainer con\npadding 20",
                        textAlign: TextAlign.center),
                  ),
                  Colors.grey),
              celda(
                  Container(
                    padding: EdgeInsets.all(30),
                    child: Text("F1C2\nMi fila está en un\nContainer con\npadding 20",
                        textAlign: TextAlign.center),
                  ),
                  Colors.white)
            ])
          ]),
          Colors.red,
        ),
      ),
      Expanded(
          child: Row(children: [
        Expanded(flex: 3, child: celda(texto("F2C1\nflex=3"), Colors.blue)),
        Expanded(child: celda(texto("F2C2"), Colors.green))
      ])),
      Expanded(child: celda(texto("F3"), Colors.yellow))
    ]));
  }
}

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
                  padding: EdgeInsets.all(20),
                  margin: EdgeInsets.only(right: 15, left: 15),
                  child: Text(
                      "F1C1\nMi fila está en un\nContainer con\npadding 20",
                      textAlign: TextAlign.center),
                ),
                Colors.grey),
            celda(
                Container(
                  child: Text(
                      "F1C2\nMi fila está en un\nContainer con\npadding 20",
                      textAlign: TextAlign.center),
                  padding: EdgeInsets.all(20),
                  margin: EdgeInsets.only(right: 15, left: 15),
                ),
                Colors.white)
          ])
        ]),
        Colors.red,
      )),
      Expanded(
          flex: 4,
          child: Row(children: [
            Expanded(child: celda(texto("F2C1\nflex=3"), Colors.blue)),
            Expanded(child: celda(texto("F2C2"), Colors.green))
          ])),
      Expanded(child: celda(texto("F3"), Colors.yellow))
    ]));
  }
}

class Layout4 extends StatelessWidget {
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
                  padding: EdgeInsets.all(20),
                  margin: EdgeInsets.only(right: 15, left: 15),
                  child: Text(
                      "F1C1\nMi fila está en un\nContainer con\npadding 20",
                      textAlign: TextAlign.center),
                ),
                Colors.grey),
            celda(
                Container(
                  child: Text(
                      "F1C2\nMi fila está en un\nContainer con\npadding 20",
                      textAlign: TextAlign.center),
                  padding: EdgeInsets.all(20),
                  margin: EdgeInsets.only(right: 15, left: 15),
                ),
                Colors.white)
          ])
        ]),
        Colors.red,
      )),
      Expanded(
        flex: 3,
        child: Row(children: [
          Expanded(child: celda(texto("F2C1\nflex=3"), Colors.blue)),
          Expanded(
            child: celda(
              Column(mainAxisAlignment: MainAxisAlignment.center, children: [
                Container(
                  margin: EdgeInsets.only(right: 20, left: 20),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        celda(
                            Text(
                                "F2C2F1\nMi fila está en un\nContainer con\npadding 20",
                                textAlign: TextAlign.center),
                            Colors.grey),
                        celda(
                            Text(
                                "F2C2F2\nMi fila está en un\nContainer con\npadding 20\nflex=2",
                                textAlign: TextAlign.center),
                            Colors.white)
                      ]),
                )
              ]),
              Colors.green,
            ),
          ),
        ]),
      ),
      Expanded(child: celda(texto("F3"), Colors.yellow))
    ]));
  }
}

// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import '../1c.page.dart';

class Portada extends StatelessWidget {
  const Portada({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Expanded(
          flex: 1,
          child: Container(
            alignment: Alignment.center,
            child: Row(children: [
              Expanded(
                flex: 1,
                child: Image.asset("assets/logoportada.png"),
              ),
              Expanded(
                flex: 2,
                child: Container(
                  alignment: Alignment.center,
                  child: Text(
                      textAlign: TextAlign.center,
                      "2ºDAM\nProgramación Multimedia\ny Dispositivos Móviles",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      )),
                ),
              ),
              Expanded(
                flex: 1,
                child: Image.asset("assets/logojunta.png"),
              )
            ]),
          )),
      Expanded(flex: 3, child: Image.asset("assets/flutter-alt.png")),
      Expanded(flex: 2, child: E1cPage())
    ]);
  }
}

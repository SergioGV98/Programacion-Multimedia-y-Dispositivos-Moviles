// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

Widget Enmarcador(Widget child) {
  return Container(
    width: 350,
    height: 250,
    padding: EdgeInsets.all(20),
    decoration: BoxDecoration(
        color: Colors.brown,
        borderRadius: BorderRadius.all(Radius.circular(10)),
        boxShadow: [
          BoxShadow(color: Colors.black.withAlpha(150)),
        ]),
    child: child,
  );
}

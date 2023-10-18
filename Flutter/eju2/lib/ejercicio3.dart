// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

Widget basico2(String texto, double tamFuente) {
  return Center(
    child: Text(
      texto,
      textAlign: TextAlign.center,
      style: TextStyle(
          fontSize: tamFuente,
          color: Colors.green,
          fontWeight: FontWeight.bold),
    ),
  );
}

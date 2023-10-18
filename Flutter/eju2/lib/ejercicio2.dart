// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class Basico extends StatelessWidget {
  const Basico({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Text("Soy el widget básico",
            style: TextStyle(
                fontSize: 30,
                color: Colors.green,
                fontWeight: FontWeight.bold)));
  }
}

// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:listadoaditivos/models/peligrosidad.enum.dart';

class IconoPeligrosidad extends StatelessWidget {
  const IconoPeligrosidad(this.peligrosidad, {super.key});
  final Peligrosidad peligrosidad;

  @override
  Widget build(BuildContext context) {
    return switch (peligrosidad) {
      Peligrosidad.saludable => Icon(Icons.favorite, color: Colors.blue),
      Peligrosidad.inofensivo =>
        Icon(Icons.sentiment_satisfied, color: Colors.green),
      Peligrosidad.precaucion => Icon(Icons.warning, color: Colors.orange),
      Peligrosidad.peligroso => Icon(Icons.dangerous, color: Colors.red),
    };
  }
}

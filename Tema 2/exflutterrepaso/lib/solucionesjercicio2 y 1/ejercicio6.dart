// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

Text texto(String texto, [double size = 30]) => Text(
      texto,
      textAlign: TextAlign.center,
      style: TextStyle(fontSize: size),
    );

Widget celda(Widget contenido, Color color) => Container(
      color: color,
      alignment: Alignment.center,
      child: contenido,
    );

class Layout1 extends StatelessWidget {
  const Layout1({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(child: celda(texto("F1"), Colors.red)),
        Expanded(child: celda(texto("F2"), Colors.blue)),
        Expanded(child: celda(texto("F3"), Colors.yellow)),
      ],
    );
  }
}

class Layout2 extends StatelessWidget {
  const Layout2({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(flex: 1, child: celda(texto("F1"), Colors.red)),
        Expanded(flex: 3, child: celda(texto("F2\nflex=3"), Colors.blue)),
        Expanded(flex: 1, child: celda(texto("F3"), Colors.yellow)),
      ],
    );
  }
}

class Layout3 extends StatelessWidget {
  const Layout3({super.key});

  Widget get contenidoF1 => Container(
        padding: EdgeInsets.all(20),
        child: Row(
          children: [
            Expanded(
                child: celda(
                    texto("F1C1\nMi fila está en un Container con padding 20",
                        20),
                    Colors.grey)),
            Expanded(
                child: celda(
                    texto("F1C2\nMi fila está en un Container con padding 20",
                        20),
                    Colors.white)),
          ],
        ),
      );

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(flex: 1, child: celda(contenidoF1, Colors.red)),
        Expanded(
            flex: 3,
            child: Row(
              children: [
                Expanded(child: celda(texto("F2C1\nflex=3"), Colors.blue)),
                Expanded(child: celda(texto("F2C2"), Colors.green)),
              ],
            )),
        Expanded(flex: 1, child: celda(texto("F3"), Colors.yellow)),
      ],
    );
  }
}

class Layout4 extends StatelessWidget {
  const Layout4({super.key});

  Widget get contenidoF1 => Container(
        padding: EdgeInsets.all(20),
        child: Row(
          children: [
            Expanded(
                child: celda(
                    texto("F1C1\nMi fila está en un Container con padding 20",
                        20),
                    Colors.grey)),
            Expanded(
                child: celda(
                    texto("F1C2\nMi fila está en un Container con padding 20",
                        20),
                    Colors.white)),
          ],
        ),
      );

  Widget get contenidoF2C2 => Container(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            Expanded(
                flex: 1,
                child: celda(
                    texto(
                        "F2C2F1\nMi columna está en un Container con padding 20",
                        20),
                    Colors.grey)),
            Expanded(
                flex: 2,
                child: celda(
                    texto(
                        "F2C2F2\nMi columna está en un Container con padding 20\nflex=2",
                        20),
                    Colors.white)),
          ],
        ),
      );

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(flex: 1, child: celda(contenidoF1, Colors.red)),
        Expanded(
            flex: 3,
            child: Row(
              children: [
                Expanded(child: celda(texto("F2C1\nflex=3"), Colors.blue)),
                Expanded(child: celda(contenidoF2C2, Colors.green)),
              ],
            )),
        Expanded(flex: 1, child: celda(texto("F3"), Colors.yellow)),
      ],
    );
  }
}

//-------------------------------------------------------------------------------
class Ejercicio6Layout1 extends StatelessWidget {
  const Ejercicio6Layout1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: SafeArea(child: Layout1()));
  }
}

//-------------------------------------------------------------------------------
class Ejercicio6Layout2 extends StatelessWidget {
  const Ejercicio6Layout2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: SafeArea(child: Layout2()));
  }
}

//-------------------------------------------------------------------------------
class Ejercicio6Layout3 extends StatelessWidget {
  const Ejercicio6Layout3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: SafeArea(child: Layout3()));
  }
}

//-------------------------------------------------------------------------------
class Ejercicio6Layout4 extends StatelessWidget {
  const Ejercicio6Layout4({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: SafeArea(child: Layout4()));
  }
}

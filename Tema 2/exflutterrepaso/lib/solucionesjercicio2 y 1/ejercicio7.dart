// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class ImagenConDescripcion extends StatelessWidget {
  final String imgUrl;
  final Widget child;

  const ImagenConDescripcion(
      {super.key, required this.imgUrl, required this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      color: Colors.grey.shade300,
      margin: EdgeInsets.only(bottom: 5),
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      child: Row(
        children: [
          Container(
            width: 95,
            height: 95,
            padding: EdgeInsets.all(5),
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: Colors.grey, width: 3)),
            child: Image.asset(
              imgUrl,
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(width: 10),
          Expanded(child: child)
        ],
      ),
    );
  }
}

class Ejercicio7 extends StatelessWidget {
  const Ejercicio7({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
                child: ImagenConDescripcion(
                    imgUrl: "images/flutter.png",
                    child: Text("Logotipo de Flutter"))),
            Expanded(flex: 5, child: Container()),
          ],
        ),
      ),
    );
  }
}

// ignore_for_file: must_be_immutable, sized_box_for_whitespace, prefer_const_constructors

import 'package:flutter/material.dart';

class ImagenConDescripcion extends StatelessWidget {
  String imgUrl;
  Widget? child;

  ImagenConDescripcion({super.key, required this.imgUrl, this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey[300],
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.all(5.0),
            child: Container(
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey, width: 3),
                borderRadius: BorderRadius.circular(10),
                color: Colors.white,
              ),
              height: 95,
              width: 95,
              child: Image.asset(imgUrl),
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 20),
            child: child,
          ),
        ],
      ),
    );
  }
}

class Titulo extends StatelessWidget {
  String texto;
  Titulo({super.key, required this.texto});

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Text(texto,
            style: TextStyle(
              fontSize: 30,
              color: Colors.black,
            )));
  }
}

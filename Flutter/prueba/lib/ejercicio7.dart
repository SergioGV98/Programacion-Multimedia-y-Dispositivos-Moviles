// ignore_for_file: must_be_immutable, sized_box_for_whitespace, prefer_const_constructors

import 'package:flutter/material.dart';

class ImagenConDescripcion extends StatelessWidget {
  String imgUrl;
  Widget? child;

  ImagenConDescripcion({super.key, required this.imgUrl, this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      color: Colors.grey[300],
      child: Row(
        children: [
          Padding(
              padding: EdgeInsets.all(5),
              child: Container(
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey, width: 3),
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white),
                height: 95,
                width: 95,
                child: Image.asset(imgUrl),
              )),
          Expanded(
            child: Container(
              child: child,
            ),
          )
        ],
      ),
    );
  }
}

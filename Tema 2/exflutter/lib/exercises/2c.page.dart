// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import 'widgets/portada.widget.dart';

class E2cPage extends StatefulWidget {
  const E2cPage({super.key});

  @override
  State<E2cPage> createState() => _E2aPageState();
}

class _E2aPageState extends State<E2cPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Portada(),
    ));
  }
}

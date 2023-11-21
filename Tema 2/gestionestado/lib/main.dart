// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:gestionestado/homepage.v1/home.page.dart';
import 'package:gestionestado/homepage.v2/home.page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: MyHomePageV2State(
        initialValue: 0,
      ),
    );
  }
}

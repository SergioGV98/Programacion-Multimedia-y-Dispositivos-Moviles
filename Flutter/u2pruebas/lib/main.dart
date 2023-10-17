// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:u2pruebas/ejemplo1.dart';
import 'package:u2pruebas/ejemplo2.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const Demo2Page(),
    );
  }
}

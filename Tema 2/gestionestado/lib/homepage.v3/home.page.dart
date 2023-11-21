// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:gestionestado/homepage.v2/counterdisplay.widget.dart';
import 'package:gestionestado/homepage.v3/counterstateprovider.inheritedwidget.dart';

class MyHomePageV3State extends StatefulWidget {
  const MyHomePageV3State({super.key, required this.initialValue});
  final int initialValue;

  @override
  State<MyHomePageV3State> createState() => _MyHomePageV1State();
}

class _MyHomePageV1State extends State<MyHomePageV3State> {
  late int _counter;

  @override
  void initState() {
    super.initState();
    _counter = widget.initialValue;
  }

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  void _resetCounter() {
    setState(() {
      _counter = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return CounterStateProvider(
      state: null,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: Text("Home page v3"),
        ),
        body: Center(
            child: CounterDisplay(
          counter: _counter,
          onReset: _resetCounter,
        )),
        floatingActionButton: FloatingActionButton(
          onPressed: _incrementCounter,
          tooltip: 'Increment',
          child: const Icon(Icons.add),
        ),
      ),
    );
  }
}

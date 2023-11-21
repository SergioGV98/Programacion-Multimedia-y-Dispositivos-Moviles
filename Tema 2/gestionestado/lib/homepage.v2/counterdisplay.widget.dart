// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class CounterDisplay extends StatelessWidget {
  const CounterDisplay(
      {super.key, required this.counter, required this.onReset});
  final int counter;
  final Function() onReset;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        const Text(
          'You have pushed the button this many times:',
        ),
        Text(
          '$counter',
          style: Theme.of(context).textTheme.headlineMedium,
        ),
        ElevatedButton(onPressed: onReset, child: Text("Reset"))
      ],
    );
  }
}

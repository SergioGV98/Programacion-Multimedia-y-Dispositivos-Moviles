import 'package:flutter/material.dart';
import 'package:gestionestado/homepage.v3/counterstate.class.dart';

class CounterStateProvider extends InheritedWidget {
  final CounterState state;

  const CounterStateProvider({super.key, required this.state, required super.child})

  @override
  bool updateShouldNotify(covariant CounterStateProvider oldWidget) {
    return state != oldWidget.state;
  }

  static CounterStateProvider? of(BuildContext context){
    return context.dependOnInheritedWidgetOfExactType<CounterStateProvider>();
  }
}

// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class E2bPage extends StatefulWidget {
  const E2bPage({super.key});

  @override
  State<E2bPage> createState() => _E2aPageState();
}

class _E2aPageState extends State<E2bPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Column(children: [
        Expanded(
            flex: 1,
            child: Container(
              alignment: Alignment.center,
              color: Colors.red,
              child: Row(children: [
                Expanded(
                  flex: 1,
                  child: Container(
                    margin: EdgeInsets.only(bottom: 10, left: 10, top: 10),
                    alignment: Alignment.center,
                    color: Colors.amber,
                    child: Text("Z1.1",
                        style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                        )),
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: Container(
                    margin: EdgeInsets.only(bottom: 10, top: 10),
                    alignment: Alignment.center,
                    color: Colors.purple,
                    child: Text("Z1.2",
                        style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                        )),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Container(
                    margin: EdgeInsets.only(bottom: 10, top: 10, right: 10),
                    alignment: Alignment.center,
                    color: Colors.indigo,
                    child: Text("Z1.3",
                        style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                        )),
                  ),
                )
              ]),
            )),
        Expanded(
            flex: 3,
            child: Container(
              alignment: Alignment.center,
              color: Colors.blue,
              child: Text("Zona 2",
                  style: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                  )),
            )),
        Expanded(
            flex: 2,
            child: Container(
              alignment: Alignment.center,
              color: Colors.green,
              child: Text("Zona 3",
                  style: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                  )),
            ))
      ]),
    ));
  }
}

// ignore_for_file: prefer_const_constructors, avoid_print, prefer_const_literals_to_create_immutables

import 'package:ejercicio1/commondrawer.widget.dart';
import 'package:flutter/material.dart';

class Ejercicio2Page extends StatefulWidget {
  const Ejercicio2Page({Key? key}) : super(key: key);

  @override
  State<Ejercicio2Page> createState() => _Ejercicio2PageState();
}

class _Ejercicio2PageState extends State<Ejercicio2Page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Ejercicio 2"),
        actions: [
          PopupMenuButton<String>(
            itemBuilder: (BuildContext context) {
              return [
                PopupMenuItem<String>(
                  onTap: () {
                    print("Edit");
                  },
                  child: Row(
                    children: [
                      Icon(Icons.edit, color: Colors.grey),
                      SizedBox(width: 8),
                      Text("Edit"),
                    ],
                  ),
                ),
                PopupMenuItem<String>(
                  onTap: () {
                    print("Share");
                  },
                  child: Row(
                    children: [
                      Icon(Icons.share, color: Colors.grey),
                      SizedBox(width: 8),
                      Text("Share"),
                    ],
                  ),
                ),
                PopupMenuItem<String>(
                  onTap: () {
                    print("Delete");
                  },
                  child: Row(
                    children: [
                      Icon(Icons.delete, color: Colors.grey),
                      SizedBox(width: 8),
                      Text("Delete"),
                    ],
                  ),
                ),
                PopupMenuDivider(height: 10),
                PopupMenuItem<String>(
                  onTap: () {
                    print("About");
                  },
                  child: Row(
                    children: [
                      Icon(Icons.info, color: Colors.grey),
                      SizedBox(width: 8),
                      Text("About"),
                    ],
                  ),
                )
              ];
            },
          ),
        ],
      ),
      drawer: CommonDrawer(),
      body: CommonBody(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(height: 16),
            TextButton(
              onPressed: () {
                print("ext button: for low-emphasis actions");
              },
              child: Text("Text button"),
            ),
            SizedBox(height: 16),
            OutlinedButton(
              onPressed: () {
                print("Outlined Button: for medium-emphasis actions");
              },
              child: Text("Outlined Button"),
            ),
            SizedBox(height: 16),
            ElevatedButton(
                onPressed: () {
                  print("Elevated button: for high-emphasis actions");
                },
                child: Text("Elevated button"))
          ],
        ),
      ),
      floatingActionButton: Container(
        alignment: Alignment.bottomCenter,
        child: FloatingActionButton(
          onPressed: () {
            print("Floating Action Button");
          },
          child: Icon(Icons.add),
        ),
      ),
    );
  }
}

class CommonBody extends StatelessWidget {
  final Widget child;

  CommonBody({required this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [Colors.blue, Colors.indigo],
        ),
      ),
      child: Center(
        child: child,
      ),
    );
  }
}

// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, avoid_print

import 'package:flutter/material.dart';
import 'commonbody.widget.dart';
import 'commondrawer.widget.dart';

class Option {
  final IconData icon;
  final String label;
  final void Function() onTap;

  Option({required this.icon, required this.label, required this.onTap});
}

class Ejercicio3 extends StatefulWidget {
  const Ejercicio3({Key? key}) : super(key: key);

  @override
  State<Ejercicio3> createState() => _Ejercicio3PageState();
}

class _Ejercicio3PageState extends State<Ejercicio3> {
  @override
  Widget build(BuildContext context) {

    return DefaultTabController(
      length: 3,
      child: Scaffold(
        drawer: CommonDrawer(),
        appBar: AppBar(
          title: Text("Ejercicio 3"),
          centerTitle: true,
          bottom: TabBar(
            tabs: [
              Tab(text: 'Home', icon: Icon(Icons.home)),
              Tab(text: 'Orders', icon: Icon(Icons.list)),
              Tab(text: 'Bookmarks', icon: Icon(Icons.bookmark)),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            CommonBody(
                child: Center(
                    child:
                        Text('Home', style: TextStyle(fontSize: 70)))),
            CommonBody(
                child: Center(
                    child:
                        Text('Orders', style: TextStyle(fontSize: 70)))),
            CommonBody(
                child: Center(
                    child: Text('Bookmarks', style: TextStyle(fontSize: 70))))
          ],
        ),
      ),
    );
  }

  PopupMenuEntry makeMenuEntry(Option op) => PopupMenuItem(
        onTap: op.onTap,
        child: ListTile(
          contentPadding: EdgeInsets.all(0),
          leading: Icon(op.icon),
          title: Text(op.label),
        ),
      );
}

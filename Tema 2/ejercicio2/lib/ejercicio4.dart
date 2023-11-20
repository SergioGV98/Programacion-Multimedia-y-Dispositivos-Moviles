// ignore_for_file: avoid_print, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'commonbody.widget.dart';
import 'commondrawer.widget.dart';

class Option {
  final IconData icon;
  final String label;
  final void Function() onTap;

  Option({required this.icon, required this.label, required this.onTap});
}

class Ejercicio4 extends StatefulWidget {
  const Ejercicio4({Key? key}) : super(key: key);

  @override
  State<Ejercicio4> createState() => _Ejercicio4PageState();
}

class _Ejercicio4PageState extends State<Ejercicio4> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
Widget build(BuildContext context) {
  return DefaultTabController(
    length: 3,
    child: Scaffold(
      key: _scaffoldKey,
      drawer: CommonDrawer(),
      appBar: AppBar(
        title: Text("Ejercicio 4"),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Expanded(
            child: TabBarView(
              children: [
                CommonBody(
                  child: Center(
                    child: Text('Home', style: TextStyle(fontSize: 70)),
                  ),
                ),
                CommonBody(
                  child: Center(
                    child: Text('Orders', style: TextStyle(fontSize: 70)),
                  ),
                ),
                CommonBody(
                  child: Center(
                    child: Text('Bookmarks', style: TextStyle(fontSize: 70)),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: Container(
        color: Colors.grey[700],
        child: TabBar(
          tabs: [
            Tab(text: 'Home', icon: Icon(Icons.home)),
            Tab(text: 'Orders', icon: Icon(Icons.list)),
            Tab(text: 'Bookmarks', icon: Icon(Icons.bookmark)),
          ],
          indicator: BoxDecoration(border: Border(top: BorderSide(color: Colors.white, width: 3))),
        ),
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

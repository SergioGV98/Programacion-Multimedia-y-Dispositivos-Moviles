// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class MenuTabBar extends StatelessWidget {
  const MenuTabBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      child: Container(
        color: Colors.red,
        child: TabBar(
          indicator: BoxDecoration(
              border: Border(
                  bottom: BorderSide(color: Colors.white, width: 3.0))),
          tabs: [
            Tab(text: "Contactos", icon: Icon(Icons.contacts_sharp)),
            Tab(text: "Favoritos", icon: Icon(Icons.favorite)),
          ],
        ),
      ),
    );
  }
}

// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

import 'modals/showInfo.modal.dart';
import 'widgets/listpeliculas.widget.dart';
import 'widgets/portada.widget.dart';

class E4Page extends StatefulWidget {
  const E4Page({super.key});

  @override
  State<E4Page> createState() => _E4PageState();
}

class _E4PageState extends State<E4Page> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: SafeArea(
          child: Scaffold(
        body: Column(
          children: [
            Expanded(
              child: TabBarView(
                children: [
                  Portada(),
                  ListPeliculas(),
                ],
              ),
            ),
          ],
        ),
        appBar: AppBar(title: Text("Portada"), actions: [
          IconButton(
              onPressed: () {
                showInfo(context);
              },
              icon: Icon(Icons.info_outline))
        ]),
        bottomNavigationBar: TabBar(
          tabs: [
            Tab(text: 'Portada', icon: Icon(Icons.home)),
            Tab(text: 'Peliculas', icon: Icon(Icons.movie)),
          ],
          indicator: BoxDecoration(
              border: Border(top: BorderSide(color: Colors.purple, width: 3))),
        ),
      )),
    );
  }
}

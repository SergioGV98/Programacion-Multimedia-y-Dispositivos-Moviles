import 'package:flutter/material.dart';

@override
Widget midrawer() {
  return Drawer(
    child: Column(
      children: [
        Container(
          margin: EdgeInsets.only(top: 20),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(100),
            color: Colors.grey,
          ),
          height: 200,
          width: 200,
        ),
        Text(
          "username",
          style: TextStyle(fontSize: 30),
        ),
        Divider(),
        Expanded(
            child: SingleChildScrollView(
          child: Column(children: [
            ListTile(
                onTap: () {
                  print("Principal");
                },
                leading: Icon(Icons.home),
                title: Text("Principal")),
            ListTile(
                onTap: () {
                  print("Pedidos");
                },
                leading: Icon(Icons.list),
                title: Text("Pedidos")),
            ListTile(
                onTap: () {
                  print("Historial");
                },
                leading: Icon(Icons.history),
                title: Text("Historial")),
            Divider(),
            ListTile(
                onTap: () {
                  print("Historial");
                },
                leading: Icon(Icons.history),
                title: Text("Historial")),
            ListTile(
                onTap: () {
                  print("Historial");
                },
                leading: Icon(Icons.history),
                title: Text("Historial")),
            ListTile(
                onTap: () {
                  print("Historial");
                },
                leading: Icon(Icons.history),
                title: Text("Historial")),
            ListTile(
                onTap: () {
                  print("Historial");
                },
                leading: Icon(Icons.history),
                title: Text("Historial")),
            ListTile(
                onTap: () {
                  print("Historial");
                },
                leading: Icon(Icons.history),
                title: Text("Historial")),
            ListTile(
                onTap: () {
                  print("Historial");
                },
                leading: Icon(Icons.history),
                title: Text("Historial"))
          ]),
        ))
      ],
    ),
  );
}

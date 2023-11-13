// ignore_for_file: prefer_const_constructors, avoid_print

import 'package:flutter/material.dart';

class CommonDrawer extends StatelessWidget {
  const CommonDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.only(top: 20),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(100),
              color: Colors.grey,
              image: DecorationImage(
                image: AssetImage("images/profile.jpg"),
                fit: BoxFit.cover,
              ),
            ),
            height: 200,
            width: 200,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0),
            child: Text(
              "SergioGV98",
              style: TextStyle(fontSize: 30),
            ),
          ),
          Divider(),
          SingleChildScrollView(
            child: Column(
              children: [
                ListTile(
                  onTap: () {
                    print("Home page");
                  },
                  leading: Icon(Icons.home),
                  title: Text("Home page"),
                ),
                ListTile(
                  onTap: () {
                    print("Orders");
                  },
                  leading: Icon(Icons.list),
                  title: Text("Orders"),
                ),
                ListTile(
                  onTap: () {
                    print("Bookmarks");
                  },
                  leading: Icon(Icons.bookmark),
                  title: Text("Bookmarks"),
                ),
              ],
            ),
          ),
          Divider(),
          SingleChildScrollView(
            child: Column(
              children: [
                ListTile(
                  onTap: () {
                    print("User Profile");
                  },
                  leading: Icon(Icons.person),
                  title: Text("User Profile"),
                ),
              ],
            ),
          ),
          Divider(),
          SingleChildScrollView(
            child: Column(
              children: [
                ListTile(
                  onTap: () {
                    print("Disconnect");
                  },
                  leading: Icon(Icons.exit_to_app),
                  title: Text("Disconnect"),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

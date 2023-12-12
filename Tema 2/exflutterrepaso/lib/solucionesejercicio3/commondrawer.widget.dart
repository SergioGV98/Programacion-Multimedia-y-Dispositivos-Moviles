// ignore_for_file: prefer_const_constructors, deprecated_member_use, avoid_print

import 'package:flutter/material.dart';

class CommonDrawer extends StatelessWidget {
  const CommonDrawer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);

    return Drawer(
      child: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(
              height: 230,
              child: DrawerHeader(
                decoration: BoxDecoration(color: theme.colorScheme.primary),
                child: Column(
                  children: [
                    SizedBox(height: 10),
                    CircleAvatar(
                      radius: 60,
                      backgroundImage: AssetImage("images/anime1.jpg"),
                    ),
                    SizedBox(height: 10),
                    Text(
                      "username",
                      style: theme.textTheme.headline6!
                          .copyWith(color: Colors.white),
                    ),
                    SizedBox(height: 10),
                  ],
                ),
              ),
            ),
            ListTile(
              onTap: () {
                Navigator.pop(context);
                DefaultTabController.of(context).animateTo(0);
              },
              leading: Icon(Icons.home),
              title: Text("Home"),
            ),
            ListTile(
              onTap: () {
                Navigator.pop(context);
                DefaultTabController.of(context).animateTo(1);
              },
              leading: Icon(Icons.list),
              title: Text("Orders"),
            ),
            ListTile(
              onTap: () {
                Navigator.pop(context);
                DefaultTabController.of(context).animateTo(2);
              },
              leading: Icon(Icons.bookmark),
              title: Text("Bookmarks"),
            ),
            Divider(),
            ListTile(
              onTap: () {
                print("User profile");
              },
              leading: Icon(Icons.person),
              title: Text("User profile"),
            ),
            Divider(),
            ListTile(
              onTap: () {
                print("Disconnect");
              },
              leading: Icon(Icons.logout),
              title: Text("Disconnect"),
            ),
          ],
        ),
      ),
    );
  }
}

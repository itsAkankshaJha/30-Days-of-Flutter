import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: ListView(
      padding: EdgeInsets.zero,
      children: [
        DrawerHeader(
          padding: EdgeInsets.zero,
          margin: EdgeInsets.zero,
          child: UserAccountsDrawerHeader(
            accountEmail: Text("Pranavgupta293@gmail.com"),
            accountName: Text("Pranav Gupta"),
            currentAccountPicture: Icon(
              Icons.account_circle,
              color: Colors.white,
              size: 80,
            ),
          ),
        ),
        ListTile(
          leading: Icon(Icons.notifications),
          title: Text("Notifications"),
          ),
        ListTile(
          leading: Icon(Icons.settings),
          title: Text("Settings"),
        ),
        ListTile(
          leading: Icon(Icons.logout),
          title: Text("Log out"),
        ),
      ],
    ));
  }
}

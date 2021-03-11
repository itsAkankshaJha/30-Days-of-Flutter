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
            accountEmail: Text("User1234@gmail.com"),
            accountName: Text("User Name"),
            currentAccountPicture: Icon(
              Icons.account_circle,
              color: Theme.of(context).backgroundColor,
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
// No work for day 27 to day 30
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Theme.of(context).colorScheme.secondary,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              DrawerHeader(
                  child: Icon(
                Icons.car_rental,
                size: 50,
                color: Theme.of(context).colorScheme.primary,
              )),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Divider(
                  color: Theme.of(context).colorScheme.secondary,
                ),
              ),
              Padding(
                  padding: EdgeInsets.only(left: 25.0),
                  child: ListTile(
                      leading: Icon(Icons.home,
                          color: Theme.of(context).colorScheme.primary),
                      title: Text('Home',
                          style: TextStyle(
                              color: Theme.of(context).colorScheme.primary)))),
              Padding(
                  padding: EdgeInsets.only(left: 25.0),
                  child: ListTile(
                      leading: Icon(Icons.chat_bubble,
                          color: Theme.of(context).colorScheme.primary),
                      title: Text('Live Chat',
                          style: TextStyle(
                              color: Theme.of(context).colorScheme.primary)))),
            ],
          ),
          Padding(
              padding: const EdgeInsets.only(left: 25.0),
              child: ListTile(
                  leading: Icon(Icons.logout,
                      color: Theme.of(context).colorScheme.primary),
                  title: Text('Logout',
                      style: TextStyle(
                          color: Theme.of(context).colorScheme.primary))))
        ],
      ),
    );
  }
}

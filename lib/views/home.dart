import 'package:flutter/material.dart';
import 'package:instagramclone/views/components/drawer.dart';
import 'package:instagramclone/views/components/navbar.dart';
import 'package:instagramclone/views/shop_view.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<Widget> pages = [
    const ShopView(),
    const ShopView(),
  ];
  int _selectedIndex = 0;
  void navigateToPage(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Builder(
          builder: (context) => IconButton(
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
              icon: Icon(
                Icons.menu,
                color: Theme.of(context).colorScheme.onBackground,
              )),
        ),
      ),
      backgroundColor: Theme.of(context).colorScheme.background,
      body: pages[_selectedIndex],
      bottomNavigationBar: MyNavBar(
        onTabChange: (index) => navigateToPage(index),
      ),
      drawer: const MyDrawer(),
    );
  }
}

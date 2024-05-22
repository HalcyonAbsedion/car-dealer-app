import 'package:flutter/material.dart';
import 'package:instagramclone/views/components/navbar.dart';
import 'package:instagramclone/views/shop_view.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key, required this.title});
  final String title;

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
              icon: const Icon(
                Icons.menu,
                color: Colors.black,
              )),
        ),
      ),
      backgroundColor: Colors.grey[300],
      body: pages[_selectedIndex],
      bottomNavigationBar: MyNavBar(
        onTabChange: (index) => navigateToPage(index),
      ),
      drawer: Drawer(
        backgroundColor: Colors.grey[900],
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                const DrawerHeader(
                    child: Icon(
                  Icons.shop,
                  color: Colors.white,
                )),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: Divider(
                    color: Colors.grey[800],
                  ),
                ),
                const Padding(
                    padding: EdgeInsets.only(left: 25.0),
                    child: ListTile(
                        leading: Icon(Icons.home, color: Colors.white),
                        title: Text('Home',
                            style: TextStyle(color: Colors.white))))
              ],
            ),
            const Padding(
                padding: EdgeInsets.only(left: 25.0),
                child: ListTile(
                    leading: Icon(Icons.logout, color: Colors.white),
                    title:
                        Text('Logout', style: TextStyle(color: Colors.white))))
          ],
        ),
      ),
    );
  }
}

// ignore_for_file: prefer_const_constructors

import 'package:ecommercepage/component/nav_bar.dart';
import 'package:ecommercepage/pages/cart_page.dart';
import 'package:ecommercepage/pages/shop_page.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // this selected index  is to control the bottom nav bar
  int _selectedIndex = 0;

  //this method will update our selected index
  //when the user taps on the  bottom bar
  void navigationBottomBar(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  //pages to display when tapped
  final List _pages = [
    // shop page
    const ShopPage(),

    // cart page
    const CartPage(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.brown[100],
      bottomNavigationBar: NavBar(
        onTabChange: (index) => navigationBottomBar(index),
      ),
      appBar: AppBar(
          backgroundColor: Colors.brown[400],
          elevation: 0,
          leading: Builder(
            builder: (context) => IconButton(
                onPressed: () {
                  Scaffold.of(context).openDrawer();
                },
                icon: Padding(
                  padding: const EdgeInsets.only(left: 11),
                  child: Icon(
                    Icons.menu,
                    color: Colors.grey[900],
                    size: 35,
                  ),
                )),
          )),
      // DRawer
      drawer: Drawer(
        backgroundColor: Colors.brown[400],
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                // logo
                Padding(
                  padding: const EdgeInsets.only(top: 50),
                  child: DrawerHeader(
                      child: Image.asset(
                    'images/success.png',
                  )),
                ),
                SizedBox(
                  height: 10,
                ),
                // other pages
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: ListTile(
                    leading: Icon(
                      Icons.home,
                      color: Colors.grey[900],
                    ),
                    title: Text(
                      'Home',
                      style: TextStyle(color: Colors.grey[900]),
                    ),
                  ),
                ),
                // about
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: ListTile(
                    leading: Icon(
                      Icons.info,
                      color: Colors.grey[900],
                    ),
                    title: Text(
                      'About',
                      style: TextStyle(color: Colors.grey[900]),
                    ),
                  ),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, bottom: 30),
              child: ListTile(
                leading: Icon(
                  Icons.logout,
                  color: Colors.grey[900],
                ),
                title: Text(
                  'Logout',
                  style: TextStyle(color: Colors.grey[900]),
                ),
              ),
            ),
          ],
        ),
      ),
      //Body
      body: _pages[_selectedIndex],
    );
  }
}

// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class NavBar extends StatelessWidget {
  void Function(int)? onTabChange;
    NavBar({super.key ,this.onTabChange});

  @override
  Widget build(BuildContext context) {
    return Container(
      
      child: GNav(
        color: Colors.grey[700],
        activeColor: Colors.lightBlue,
        tabActiveBorder: Border.all(color: Colors.white),
        tabBackgroundColor: Colors.grey.shade300,
        mainAxisAlignment: MainAxisAlignment.center,
        onTabChange: (value)=> onTabChange!(value),
        tabs: [
        GButton(
          icon: Icons.home,
          text: 'Shop',
        ),
        GButton(
          icon: Icons.shopping_bag,
          text: 'Cart',
        ),
      ]),
    );
  }
}

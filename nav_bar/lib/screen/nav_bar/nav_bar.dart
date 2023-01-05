import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:nav_bar/screen/category.dart';
import 'package:nav_bar/screen/home.dart';
import 'package:nav_bar/screen/product.dart';
import 'package:nav_bar/screen/profile.dart';

class NavBar extends StatefulWidget {
  const NavBar({super.key});

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  List<Widget> pages = [
    CategoryPage(),
    ProductPage(),
    HomePage(),
    ProfilePage()
  ];

  int currentIndext = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[currentIndext],
      bottomNavigationBar: BottomNavigationBar(
        onTap: (index) {
          setState(() {
            currentIndext = index;
          });
        },
        currentIndex: currentIndext,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.category),
            label: "Category",
            backgroundColor: Colors.blue,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.production_quantity_limits),
            label: "Product",
            backgroundColor: Colors.blue,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.app_registration_rounded),
            label: "Contact",
            backgroundColor: Colors.blue,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: "Profile",
            backgroundColor: Colors.blue,
          ),
        ],
      ),
    );
  }
}

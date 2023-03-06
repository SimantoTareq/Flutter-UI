import 'package:flutter/material.dart';
import 'package:flutter_zoom_drawer/config.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
import 'package:shopping_app_ui/drawer/drawer.dart';
import 'package:shopping_app_ui/drawer/home.dart';
import 'package:shopping_app_ui/drawer/menu_widget.dart';
import 'package:shopping_app_ui/home_page.dart';
import 'package:shopping_app_ui/navbar/navbar.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return ZoomDrawer(
      // style: DrawerStyle.style1,
      menuScreen: DrawerScreen(
        setIndex: (index) {
          setState(() {
            currentIndex = index;
          });
        },
      ),
      mainScreen: currentScreen(),
      borderRadius: 30,
      showShadow: false,
      angle: -8.0,
      slideWidth: 280,
      menuBackgroundColor: Color(0xff1A2530),
    );
  }

  Widget currentScreen() {
    switch (currentIndex) {
      case 0:
        return NavBar(
            // title: "Home",

            );
      case 1:
        return HomeScreen(
            //  title: "Inbox",
            );
      case 2:
        return HomeScreen(
            //  title: "Sent",
            );
      case 3:
        return HomeScreen(
            //  title: "Favorite",
            );
      case 4:
        return HomeScreen(
            //  title: "Archive",
            );
      case 5:
        return HomeScreen(
            //  title: "Spam",
            );
      default:
        return NavBar();
    }
  }
}

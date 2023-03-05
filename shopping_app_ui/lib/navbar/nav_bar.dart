import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:shopping_app_ui/home_page.dart';
import 'package:shopping_app_ui/pages/favourite.dart';
import 'package:shopping_app_ui/pages/notification.dart';
import 'package:shopping_app_ui/pages/profile.dart';

class Nav_Bar extends StatefulWidget {
  const Nav_Bar({super.key});

  @override
  State<Nav_Bar> createState() => _Nav_BarState();
}

class _Nav_BarState extends State<Nav_Bar> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.w600);
  static const List<Widget> _widgetOptions = <Widget>[
    HomePage(),
    favourite(),
    notification(),
    profile()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              blurRadius: 20,
              color: Colors.black.withOpacity(.1),
            )
          ],
        ),
        child: CustomPaint(
          painter: NavCustomPainter(),
          child: SafeArea(
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 15.0, vertical: 8),
              child: GNav(
                rippleColor: Colors.grey[300]!,
                hoverColor: Colors.grey[100]!,
                gap: 8,
                activeColor: Colors.black,
                iconSize: 24,
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 12),
                duration: Duration(milliseconds: 400),
                tabBackgroundColor: Colors.grey[100]!,
                color: Colors.black,
                tabs: [
                  GButton(
                    icon: Icons.card_travel,
                  ),
                  GButton(
                    icon: Icons.list,
                  ),
                  GButton(
                    icon: Icons.bookmark,
                  ),
                  GButton(
                    icon: Icons.person,
                  ),
                ],
                selectedIndex: _selectedIndex,
                onTabChange: (index) {
                  setState(() {
                    _selectedIndex = index;
                  });
                },
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class NavCustomPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    // TODO: implement paint
    Path path_0 = Path();
    path_0.moveTo(size.width * 0.3244320, size.height * 0.2227273);
    path_0.cubicTo(
        size.width * 0.1781040,
        size.height * 0.2336364,
        size.width * 0.04717413,
        size.height * 0.1030300,
        0,
        size.height * 0.03636364);
    path_0.lineTo(0, size.height);
    path_0.lineTo(size.width, size.height);
    path_0.lineTo(size.width, size.height * 0.03636364);
    path_0.cubicTo(
        size.width * 0.9279040,
        size.height * 0.2136364,
        size.width * 0.7383173,
        size.height * 0.2181818,
        size.width * 0.6809067,
        size.height * 0.2181818);
    path_0.cubicTo(
        size.width * 0.6234987,
        size.height * 0.2181818,
        size.width * 0.6128160,
        size.height * 0.2454545,
        size.width * 0.6128160,
        size.height * 0.3227273);
    path_0.cubicTo(
        size.width * 0.6128160,
        size.height * 0.4000000,
        size.width * 0.6250267,
        size.height * 0.6107127,
        size.width * 0.5540720,
        size.height * 0.6409091);
    path_0.cubicTo(
        size.width * 0.4152213,
        size.height * 0.7000000,
        size.width * 0.3881067,
        size.height * 0.5409091,
        size.width * 0.3858480,
        size.height * 0.4409091);
    path_0.cubicTo(
        size.width * 0.3831787,
        size.height * 0.3227273,
        size.width * 0.3898533,
        size.height * 0.2227273,
        size.width * 0.3244320,
        size.height * 0.2227273);
    path_0.close();

    Paint paint_0_fill = Paint()..style = PaintingStyle.fill;
    paint_0_fill.color = Colors.white.withOpacity(1.0);
    canvas.drawPath(path_0, paint_0_fill);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}

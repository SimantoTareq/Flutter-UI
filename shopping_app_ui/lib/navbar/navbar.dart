import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:shopping_app_ui/home_page.dart';
import 'package:shopping_app_ui/pages/cart.dart';
import 'package:shopping_app_ui/pages/favourite.dart';
import 'package:shopping_app_ui/pages/notification.dart';
import 'package:shopping_app_ui/pages/profile.dart';
import 'package:sizer/sizer.dart';

class NavBar extends StatefulWidget {
  const NavBar({super.key});

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  int _currentIndex = 0;
  static const List<Widget> _pages = <Widget>[
    HomePage(),
    favourite(),
    // const cart(),
    notification(),
    profile(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Colors.white.withAlpha(55),
      body: _pages.elementAt(_currentIndex),
      bottomNavigationBar: buildMyNavBar(context),
    );
  }

  Container buildMyNavBar(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width,
      height: 90,
      child: Stack(
        // overflow: Overflow.visible,
        children: [
          CustomPaint(
            size: Size(size.width, 80),
            painter: NavCustomPainter(),
          ),
          Center(
            heightFactor: 0.6,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                boxShadow: [
                  BoxShadow(
                    color: Color(0xff5B9EE1).withOpacity(0.4),
                    spreadRadius: 4,
                    blurRadius: 8,
                    offset: Offset(0, 3), // changes position of shadow
                  ),
                ],
              ),
              child: FloatingActionButton(
                backgroundColor: Color(0xff5B9EE1),
                child: Icon(Icons.shopping_bag_outlined),
                elevation: 0.1,
                onPressed: () {
                  // Navigator.of(context)
                  //     .push(MaterialPageRoute(builder: (context) => cart()));
                },
              ),
            ),
          ),
          Center(
            child: Row(
                //  mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  SizedBox(
                    width: 5.w,
                  ),
                  IconButton(
                    enableFeedback: false,
                    onPressed: () {
                      setState(() {
                        _currentIndex = 0;
                      });
                    },
                    icon: _currentIndex == 0
                        ? const Icon(
                            Icons.home_outlined,
                            color: Color(0xff5B9EE1),
                          )
                        : const Icon(
                            Icons.home_outlined,
                            color: Color(0xff707B81),
                          ),
                  ),
                  SizedBox(
                    width: 7.w,
                  ),
                  IconButton(
                    enableFeedback: false,
                    onPressed: () {
                      setState(() {
                        _currentIndex = 1;
                      });
                    },
                    icon: _currentIndex == 1
                        ? const Icon(
                            Icons.favorite_border_outlined,
                            color: Color(0xff5B9EE1),
                          )
                        : const Icon(
                            Icons.favorite_border_outlined,
                            color: Color(0xff707B81),
                          ),
                  ),
                  SizedBox(
                    width: 27.w,
                  ),
                  IconButton(
                    enableFeedback: false,
                    onPressed: () {
                      setState(() {
                        _currentIndex = 2;
                      });
                    },
                    icon: _currentIndex == 2
                        ? const Icon(
                            Icons.notifications_none_rounded,
                            color: Color(0xff5B9EE1),
                          )
                        : const Icon(
                            Icons.notifications_none_outlined,
                            color: Color(0xff707B81),
                          ),
                  ),
                  SizedBox(
                    width: 8.w,
                  ),
                  IconButton(
                    enableFeedback: false,
                    onPressed: () {
                      setState(() {
                        _currentIndex = 3;
                      });
                    },
                    icon: _currentIndex == 3
                        ? const Icon(
                            Icons.person,
                            color: Color(0xff5B9EE1),
                            //size: 35,
                          )
                        : const Icon(
                            Icons.person_outline,
                            color: Color(0xff707B81),
                          ),
                  ),
                ]),
          ),
          // GNav(
          //   tabs: [
          //     GButton(icon: Icons.home),
          //     GButton(icon: Icons.home),
          //     GButton(icon: Icons.home),
          //     GButton(icon: Icons.home),
          //   ],
          //   selectedIndex: _currentIndex,
          //   onTabChange: (index) {
          //     setState(() {
          //       _currentIndex = index;
          //     });
          //   },
          // )
        ],
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



//Add this CustomPaint widget to the Widget Tree






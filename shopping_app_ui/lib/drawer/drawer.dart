import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shopping_app_ui/style/my_style.dart';
import 'package:sizer/sizer.dart';

class DrawerScreen extends StatefulWidget {
  final ValueSetter setIndex;
  const DrawerScreen({Key? key, required this.setIndex}) : super(key: key);

  @override
  State<DrawerScreen> createState() => _DrawerScreenState();
}

class _DrawerScreenState extends State<DrawerScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff1A2530),
      body: Padding(
        padding: EdgeInsets.fromLTRB(0, 10.h, 0, 4.h),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              child: Padding(
                padding: EdgeInsets.only(left: 6.w),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          color: Color(0xffDFEFFF),
                          borderRadius: BorderRadius.circular(50)),
                      child: Image.asset("images/profile.png"),
                    ),
                    SizedBox(
                      height: 2.h,
                    ),
                    Text(
                      "Hey, 👋",
                      style: myStyle(20, Color(0xff707B81), FontWeight.w400),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      "Alisson Becker",
                      style: myStyle(24, Color(0xffFFFFFF), FontWeight.w500),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 1.h,
            ),

            drawerList(Icons.person_outline_outlined, "Profile", 0),
            drawerList(Icons.home_outlined, "HomePage", 1),
            drawerList(Icons.shopping_bag_outlined, "My Cart", 2),
            drawerList(Icons.favorite_border_outlined, "Favorite", 3),
            drawerList(Icons.delivery_dining_outlined, "Order", 4),
            drawerList(Icons.notifications_active_outlined, "Notifications", 5),

            Divider(
              height: 15,
              color: Color(0xff2D3B48),
              thickness: 2,
              indent: 20,
              endIndent: 80,
            ),

            drawerList(Icons.logout_rounded, "Sign Out", 0)

            // Row(
            //   children: [
            //     Image.asset("images/user.png"),
            //     Text("Profile"),
            //   ],
            // ),
            // Row(
            //   children: [
            //     Image.asset("images/home.png"),
            //     Text("Home Page"),
            //   ],
            // ),
            // Row(
            //   children: [
            //     Image.asset("images/cart.png"),
            //     Text("My Cart"),
            //   ],
            // ),
            // Row(
            //   children: [
            //     Image.asset("images/heart.png"),
            //     Text("Favorite"),
            //   ],
            // ),
            // Row(
            //   children: [
            //     Image.asset("images/delivery.png"),
            //     Text("Orders"),
            //   ],
            // ),
            // Row(
            //   children: [
            //     Image.asset("images/Notifications.png"),
            //     Text("Notifications"),
            //   ],
            // ),
            // SizedBox(
            //   height: 4.h,
            // ),
            // Row(
            //   children: [
            //     Image.asset("images/Out.png"),
            //     Text("Sign Out"),
            //   ],
            // ),
          ],
        ),
      ),
    );
  }

  Widget drawerList(IconData icon, String text, int index) {
    return GestureDetector(
      onTap: () {
        widget.setIndex(index);
      },
      child: Container(
        margin: EdgeInsets.only(left: 20, bottom: 12),
        child: Row(
          children: [
            Icon(
              icon,
              color: Color(0xff707B81),
            ),
            SizedBox(
              width: 12,
            ),
            Text(
              text,
              style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}

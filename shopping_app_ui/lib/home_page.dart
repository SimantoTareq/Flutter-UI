import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:shopping_app_ui/style/my_style.dart';
import 'package:sizer/sizer.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF8F9FA),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 3.w, vertical: 5.h),
        child: Column(
          children: [
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    //margin: EdgeInsets.only(left: 2.h),
                    height: 45,
                    width: 45,
                    decoration: BoxDecoration(
                      color: Color(0xffFFFFFF),
                      borderRadius: BorderRadius.circular(50),
                    ),
                    child: Image.asset(
                      "images/menu.png",
                    ),
                  ),
                  Column(
                    children: [
                      Text(
                        "Store location",
                        style: myStyle(12, Color(0xff707B81), FontWeight.w400),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.location_on_rounded,
                            color: Color(0xffF87265),
                          ),
                          Text(
                            "Mondolibug,Sylhet",
                            style: myStyle(18, Color(0xff1A2530)),
                          ),
                        ],
                      )
                    ],
                  ),
                  Container(
                    // margin: EdgeInsets.only(top: 30, right: 20),
                    //transform: Matrix4.rotationZ(100),
                    child: Stack(
                      children: [
                        Container(
                          //margin: EdgeInsets.only(right: 2.h),
                          height: 45,
                          width: 45,
                          decoration: BoxDecoration(
                            color: Color(0xffFFFFFF),
                            borderRadius: BorderRadius.circular(50),
                          ),
                          child: Icon(
                            Icons.shopping_bag_outlined,
                            color: Colors.black,
                          ),
                        ),
                        Positioned(
                          left: 30,
                          child: Container(
                            padding: EdgeInsets.all(4),
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Color(0xffF87265)),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 3.h,
            ),
            Container(
              height: 50,
              //margin: EdgeInsets.symmetric(horizontal: 2.h),
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(30)),
              child: Row(
                children: [
                  SizedBox(
                    width: 4.w,
                  ),
                  Image.asset('images/Vector.png'),
                  SizedBox(
                    width: 10,
                  ),
                  Text('Looking for shoes'),
                ],
              ),
            ),
            SizedBox(
              height: 3.5.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  //margin: EdgeInsets.only(left: 2.h),
                  height: 45,
                  width: 92,
                  decoration: BoxDecoration(
                    color: Color(0xff4DB4FF),
                    borderRadius: BorderRadius.circular(50),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        height: 32,
                        width: 32,
                        decoration: BoxDecoration(
                          color: Color(0xffFFFFFF),
                          borderRadius: BorderRadius.circular(50),
                        ),
                        child: Image.asset('images/nike.png'),
                      ),
                      Text("Nike")
                    ],
                  ),
                ),
                Container(
                  //margin: EdgeInsets.only(left: 2.h),
                  height: 45,
                  width: 45,
                  decoration: BoxDecoration(
                    color: Color(0xffFFFFFF),
                    borderRadius: BorderRadius.circular(50),
                  ),
                  child: Image.asset(
                    "images/puma.png",
                  ),
                ),
                Container(
                  //margin: EdgeInsets.only(left: 2.h),
                  height: 45,
                  width: 45,
                  decoration: BoxDecoration(
                    color: Color(0xffFFFFFF),
                    borderRadius: BorderRadius.circular(50),
                  ),
                  child: Image.asset(
                    "images/Vecto.png",
                  ),
                ),
                Container(
                  //margin: EdgeInsets.only(left: 2.h),
                  height: 45,
                  width: 45,
                  decoration: BoxDecoration(
                    color: Color(0xffFFFFFF),
                    borderRadius: BorderRadius.circular(50),
                  ),
                  child: Image.asset(
                    "images/adidas.png",
                  ),
                ),
                Container(
                  //margin: EdgeInsets.only(left: 2.h),
                  height: 45,
                  width: 45,
                  decoration: BoxDecoration(
                    color: Color(0xffFFFFFF),
                    borderRadius: BorderRadius.circular(50),
                  ),
                  child: Image.asset(
                    "images/converse.png",
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 3.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Popular Shoes"),
                Text("See all"),
              ],
            ),
            SizedBox(
              height: 3.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  padding: EdgeInsets.only(left: 10),
                  //margin: EdgeInsets.only(left: 2.h),
                  height: 201,
                  width: 45.w,
                  decoration: BoxDecoration(
                    color: Color(0xffFFFFFF),
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Image.asset(
                        "images/jordan.png",
                      ),
                      Text("BEST SELLER"),
                      Text("Nike Jordan"),
                      Text("\$493.00")
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(left: 10),
                  //margin: EdgeInsets.only(left: 2.h),
                  height: 201,
                  width: 45.w,
                  decoration: BoxDecoration(
                    color: Color(0xffFFFFFF),
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Image.asset(
                        "images/air.png",
                      ),
                      Text("BEST SELLER"),
                      Text("Nike Air Max"),
                      Text("\$897.00")
                    ],
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

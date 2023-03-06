import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
import 'package:shopping_app_ui/drawer/menu_page.dart';
import 'package:shopping_app_ui/drawer/menu_widget.dart';
import 'package:shopping_app_ui/navbar/navbar.dart';
import 'package:shopping_app_ui/pages/cart.dart';
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
      appBar: AppBar(
        backgroundColor: Color(0xffF8F9FA),
        elevation: 0,
        title: Column(
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
        leading: DrawerWidget(),
        actions: [
          Stack(
            children: [
              Container(
                //margin: EdgeInsets.only(right: 2.h),
                height: 50,
                width: 50,
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
                      shape: BoxShape.circle, color: Color(0xffF87265)),
                ),
              ),
            ],
          )
        ],
      ),
      backgroundColor: Color(0xffF8F9FA),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 3.w, vertical: 1.h),
        child: ListView(
          children: [
            // Container(
            //   child: Row(
            //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //     crossAxisAlignment: CrossAxisAlignment.start,
            //     children: [
            //       InkWell(
            //         onTap: () => DrawerWidget(),
            //         child: Container(
            //           //margin: EdgeInsets.only(left: 2.h),
            //           height: 45,
            //           width: 45,
            //           decoration: BoxDecoration(
            //             color: Color(0xffFFFFFF),
            //             borderRadius: BorderRadius.circular(50),
            //           ),
            //           child: Image.asset(
            //             "images/menu.png",
            //           ),
            //         ),
            //       ),
            //       Column(
            //         children: [
            //           Text(
            //             "Store location",
            //             style: myStyle(12, Color(0xff707B81), FontWeight.w400),
            //           ),
            //           Row(
            //             mainAxisAlignment: MainAxisAlignment.center,
            //             children: [
            //               Icon(
            //                 Icons.location_on_rounded,
            //                 color: Color(0xffF87265),
            //               ),
            //               Text(
            //                 "Mondolibug,Sylhet",
            //                 style: myStyle(18, Color(0xff1A2530)),
            //               ),
            //             ],
            //           )
            //         ],
            //       ),
            //       InkWell(
            //         onTap: () {
            //           Navigator.of(context).push(
            //               MaterialPageRoute(builder: (context) => cart()));
            //         },
            //         child: Container(
            //           // margin: EdgeInsets.only(top: 30, right: 20),
            //           //transform: Matrix4.rotationZ(100),
            //           child: Stack(
            //             children: [
            //               Container(
            //                 //margin: EdgeInsets.only(right: 2.h),
            //                 height: 45,
            //                 width: 45,
            //                 decoration: BoxDecoration(
            //                   color: Color(0xffFFFFFF),
            //                   borderRadius: BorderRadius.circular(50),
            //                 ),
            //                 child: Icon(
            //                   Icons.shopping_bag_outlined,
            //                   color: Colors.black,
            //                 ),
            //               ),
            //               Positioned(
            //                 left: 30,
            //                 child: Container(
            //                   padding: EdgeInsets.all(4),
            //                   decoration: BoxDecoration(
            //                       shape: BoxShape.circle,
            //                       color: Color(0xffF87265)),
            //                 ),
            //               ),
            //             ],
            //           ),
            //         ),
            //       ),
            //     ],
            //   ),
            // ),

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
                  Text(
                    'Looking for shoes',
                    style: myStyle(14, Color(0xff707B81), FontWeight.w400),
                  ),
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
              height: 2.5.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Popular Shoes",
                  style: myStyle(16, Color(0xff1A2530), FontWeight.w500),
                ),
                Text(
                  "See all",
                  style: myStyle(13, Color(0xff5B9EE1), FontWeight.w400),
                ),
              ],
            ),
            SizedBox(
              height: 2.5.h,
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
                      Text(
                        "BEST SELLER",
                        style: myStyle(12, Color(0xff5B9EE1), FontWeight.w400),
                      ),
                      Text(
                        "Nike Jordan",
                        style: myStyle(16, Color(0xff1A2530), FontWeight.w500),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "\$897.00",
                            style:
                                myStyle(16, Color(0xff1A2530), FontWeight.w500),
                          ),
                          InkWell(
                            onTap: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => cart()));
                            },
                            child: Container(
                              height: 35.5,
                              width: 34,
                              decoration: BoxDecoration(
                                color: Color(0xff5B9EE1),
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(16),
                                  bottomRight: Radius.circular(16),
                                ),
                              ),
                              child: Icon(
                                Icons.add,
                                color: Colors.white,
                              ),
                            ),
                          )
                        ],
                      ),
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
                      Text(
                        "BEST SELLER",
                        style: myStyle(12, Color(0xff5B9EE1), FontWeight.w400),
                      ),
                      Text(
                        "Nike Air Max",
                        style: myStyle(16, Color(0xff1A2530), FontWeight.w500),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "\$897.00",
                            style:
                                myStyle(16, Color(0xff1A2530), FontWeight.w500),
                          ),
                          InkWell(
                            onTap: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => cart()));
                            },
                            child: Container(
                              height: 35.5,
                              width: 34,
                              decoration: BoxDecoration(
                                color: Color(0xff5B9EE1),
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(16),
                                  bottomRight: Radius.circular(16),
                                ),
                              ),
                              child: Icon(
                                Icons.add,
                                color: Colors.white,
                              ),
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 2.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "New Arrivals",
                  style: myStyle(16, Color(0xff1A2530), FontWeight.w500),
                ),
                Text("See all",
                    style: myStyle(13, Color(0xff5B9EE1), FontWeight.w400)),
              ],
            ),
            SizedBox(
              height: 2.h,
            ),
            Container(
              padding: EdgeInsets.all(16),
              //margin: EdgeInsets.only(left: 2.h),
              height: 120,
              width: 95.w,
              decoration: BoxDecoration(
                color: Color(0xffFFFFFF),
                borderRadius: BorderRadius.circular(16),
              ),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "BEST CHOICE",
                            style:
                                myStyle(12, Color(0xff5B9EE1), FontWeight.w500),
                          ),
                          Text(
                            "Nike Air Jordan",
                            style:
                                myStyle(20, Color(0xff1A2530), FontWeight.w500),
                          ),
                          SizedBox(
                            height: 1.h,
                          ),
                          Text(
                            "\$849.69",
                            style:
                                myStyle(16, Color(0xff1A2530), FontWeight.w500),
                          ),
                        ],
                      ),
                      Image.asset("images/air2.png")
                    ],
                  ),
                ],
              ),
            ),
            NavBar(),
          ],
        ),
      ),
    );
  }
}

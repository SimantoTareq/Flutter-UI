import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:shopping_app_ui/style/my_style.dart';
import 'package:sizer/sizer.dart';

class cart extends StatefulWidget {
  const cart({super.key});

  @override
  State<cart> createState() => _cartState();
}

class _cartState extends State<cart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Color(0xffF8F9FA),
      body: Container(
        // flex: 1,
        child: Column(
          children: [
            Expanded(
              flex: 6,
              child: Container(
                color: Color(0xffF8F9FA),
                child: Padding(
                  padding: EdgeInsets.fromLTRB(2.w, 3.h, 2.w, 0),
                  child: Column(
                    children: [
                      Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            InkWell(
                              onTap: () {
                                Navigator.of(context).pop();
                              },
                              child: Container(
                                //margin: EdgeInsets.only(left: 2.h),
                                height: 45,
                                width: 45,
                                decoration: BoxDecoration(
                                  color: Color(0xffFFFFFF),
                                  borderRadius: BorderRadius.circular(50),
                                ),
                                child: Icon(Icons.arrow_back_ios_outlined),
                              ),
                            ),
                            Center(
                              child: Text(
                                "Men's Shoes",
                                style: myStyle(
                                    16, Color(0xff1A2530), FontWeight.w500),
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
                              child: Icon(Icons.shopping_bag_outlined),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        height: 28.h,
                        child: Stack(
                          children: [
                            Positioned(
                              bottom: 5.h,
                              right: 7.h,
                              child: Image.asset("images/zoom.png"),
                            ),
                            Positioned(
                              right: 4.h,
                              bottom: 0,
                              child: Image.asset("images/ellipse.png"),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 8,
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Color(0xffFFFFFF),
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(24),
                    topLeft: Radius.circular(24),
                  ),
                ),
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 4.w, vertical: 2.h),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "BEST SELLER",
                        style: myStyle(14, Color(0xff5B9EE1), FontWeight.w400),
                      ),
                      SizedBox(
                        height: 0.5.h,
                      ),
                      Text(
                        "Nike Air Jordan",
                        style: myStyle(24, Color(0xff1A2530), FontWeight.w500),
                      ),
                      SizedBox(
                        height: 0.8.h,
                      ),
                      Text(
                        "\$967.800",
                        style: myStyle(20, Color(0xff1A2530), FontWeight.w500),
                      ),
                      SizedBox(
                        height: 0.5.h,
                      ),
                      Text(
                        "Air Jordan is an American brand of basketball \nshopes athletic, casual, and style clothing \nproduced by Nike...",
                        style: myStyle(14, Color(0xff707B81), FontWeight.w400),
                      ),
                      SizedBox(
                        height: 1.h,
                      ),
                      Text(
                        "Gallery",
                        style: myStyle(18, Color(0xff1A2530), FontWeight.w500),
                      ),
                      SizedBox(
                        height: 0.8.h,
                      ),
                      Row(
                        children: [
                          Container(
                            //margin: EdgeInsets.only(left: 2.h),
                            height: 56,
                            width: 56,
                            decoration: BoxDecoration(
                              color: Color(0xffF8F9FA),
                              borderRadius: BorderRadius.circular(16),
                            ),
                            child: Image.asset("images/g1.png"),
                          ),
                          SizedBox(
                            width: 4.w,
                          ),
                          Container(
                            //margin: EdgeInsets.only(left: 2.h),
                            height: 56,
                            width: 56,
                            decoration: BoxDecoration(
                              color: Color(0xffF8F9FA),
                              borderRadius: BorderRadius.circular(16),
                            ),
                            child: Image.asset("images/g2.png"),
                          ),
                          SizedBox(
                            width: 4.w,
                          ),
                          Container(
                            //margin: EdgeInsets.only(left: 2.h),
                            height: 56,
                            width: 56,
                            decoration: BoxDecoration(
                              color: Color(0xffF8F9FA),
                              borderRadius: BorderRadius.circular(16),
                            ),
                            child: Image.asset("images/g3.png"),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 1.h,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Text(
                                "Size",
                                style: myStyle(
                                    18, Color(0xff1A2530), FontWeight.w500),
                              ),
                            ],
                          ),
                          Row(
                            //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text(
                                "EU",
                                style: myStyle(
                                    14, Color(0xff1A2530), FontWeight.w500),
                              ),
                              SizedBox(
                                width: 3.w,
                              ),
                              Text(
                                "US",
                                style: myStyle(
                                    14, Color(0xff707B81), FontWeight.w500),
                              ),
                              SizedBox(
                                width: 4.w,
                              ),
                              Text(
                                "UK",
                                style: myStyle(
                                    14, Color(0xff707B81), FontWeight.w500),
                              ),
                            ],
                          )
                        ],
                      ),
                      SizedBox(
                        height: 1.h,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            //margin: EdgeInsets.only(left: 2.h),
                            height: 45,
                            width: 45,
                            decoration: BoxDecoration(
                              color: Color(0xffF8F9FA),
                              borderRadius: BorderRadius.circular(22.5),
                            ),
                            child: Center(
                              child: Text(
                                "38",
                                style: myStyle(
                                    16, Color(0xff707B81), FontWeight.w400),
                              ),
                            ),
                          ),
                          Container(
                            //margin: EdgeInsets.only(left: 2.h),
                            height: 45,
                            width: 45,
                            decoration: BoxDecoration(
                              color: Color(0xffF8F9FA),
                              borderRadius: BorderRadius.circular(22.5),
                            ),
                            child: Center(
                                child: Text(
                              "39",
                              style: myStyle(
                                  16, Color(0xff707B81), FontWeight.w400),
                            )),
                          ),
                          Container(
                            //margin: EdgeInsets.only(left: 2.h),
                            height: 45,
                            width: 45,
                            decoration: BoxDecoration(
                              color: Color(0xff5B9EE1),
                              borderRadius: BorderRadius.circular(22.5),
                              boxShadow: [
                                BoxShadow(
                                  color: Color(0xff5B9EE1).withOpacity(0.4),
                                  spreadRadius: 3,
                                  blurRadius: 10,
                                  offset: Offset(
                                      0, 8), // changes position of shadow
                                ),
                              ],
                            ),
                            child: Center(
                                child: Text(
                              "40",
                              style: myStyle(
                                  16, Color(0xffFFFFFF), FontWeight.w400),
                            )),
                          ),
                          Container(
                            //margin: EdgeInsets.only(left: 2.h),
                            height: 45,
                            width: 45,
                            decoration: BoxDecoration(
                              color: Color(0xffF8F9FA),
                              borderRadius: BorderRadius.circular(22.5),
                            ),
                            child: Center(
                                child: Text(
                              "41",
                              style: myStyle(
                                  16, Color(0xff707B81), FontWeight.w400),
                            )),
                          ),
                          Container(
                            //margin: EdgeInsets.only(left: 2.h),
                            height: 45,
                            width: 45,
                            decoration: BoxDecoration(
                              color: Color(0xffF8F9FA),
                              borderRadius: BorderRadius.circular(22.5),
                            ),
                            child: Center(
                                child: Text(
                              "42",
                              style: myStyle(
                                  16, Color(0xff707B81), FontWeight.w400),
                            )),
                          ),
                          Container(
                            //margin: EdgeInsets.only(left: 2.h),
                            height: 45,
                            width: 45,
                            decoration: BoxDecoration(
                              color: Color(0xffF8F9FA),
                              borderRadius: BorderRadius.circular(22.5),
                            ),
                            child: Center(
                                child: Text(
                              "43",
                              style: myStyle(
                                  16, Color(0xff707B81), FontWeight.w400),
                            )),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: Container(
        height: 13.h,
        decoration: BoxDecoration(
          color: Color(0xffFFFFFF),
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(24), topRight: Radius.circular(24)),
          boxShadow: [
            BoxShadow(
              color: Color.fromRGBO(131, 170, 209, 0.12),
              spreadRadius: 3,
              blurRadius: 10,
              offset: Offset(3, 0), // changes position of shadow
            ),
          ],
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 3.w, vertical: 2.h),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 0.7.h,
                  ),
                  Text(
                    "Price",
                    style: myStyle(16, Color(0xff707B81), FontWeight.w400),
                  ),
                  Text(
                    "\$849.69",
                    style: myStyle(20, Color(0xff1A2530), FontWeight.w500),
                  ),
                ],
              ),
              Container(
                height: 6.h,
                width: 40.w,
                decoration: BoxDecoration(
                  color: Color(0xff5B9EE1),
                  borderRadius: BorderRadius.circular(50),
                ),
                child: Center(
                    child: Text(
                  "Add to Cart",
                  style: myStyle(18, Color(0xffFFFFFF), FontWeight.w500),
                )),
              )
            ],
          ),
        ),
      ),
    );
  }
}

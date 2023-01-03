// ignore_for_file: avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:payment_list/drawer.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MyDrawer(),
      // endDrawer: MyDrawer(),
      key: _scaffoldKey,
      appBar: AppBar(
        leading: InkWell(
          onTap: () {
            _scaffoldKey.currentState!.openDrawer();
          },
          child: Image.asset(
            'images/Vector.png',
            height: 14,
            width: 16,
          ),
        ),
        title: Text("Table Data",
            style: Style2(16, Color(0xffFFFFFF), FontWeight.w600)),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.fromLTRB(16, 12, 16, 12),
          child: Column(
            children: [
              Container(
                height: 78,
                width: double.infinity,
                //   color: Colors.red,
                child: Row(
                  children: [
                    Expanded(
                        flex: 8,
                        child: Container(
                          //color: Color(0xff10AB83),
                          child: Column(
                            children: [
                              Expanded(
                                  flex: 2,
                                  child: Container(
                                    width: double.infinity,
                                    color: Color(0xff10AB83),
                                    child: Padding(
                                      padding: const EdgeInsets.fromLTRB(
                                          15, 4, 0, 4),
                                      child: Text(
                                        "Dues",
                                        style: Style(14, Color(0xffFFFFFF),
                                            FontWeight.w600),
                                      ),
                                    ),
                                  )),
                              Expanded(
                                  flex: 4,
                                  child: Container(
                                    decoration: BoxDecoration(
                                      color: Color.fromARGB(255, 255, 255, 255),
                                      border: Border(
                                        left: BorderSide(
                                          color: Color(0xff10AB83),
                                        ),
                                        right: BorderSide(
                                          color: Color(0xff10AB83),
                                        ),
                                      ),
                                    ),
                                    width: double.infinity,
                                    child: Padding(
                                        padding: const EdgeInsets.fromLTRB(
                                            15, 4, 0, 4),
                                        child: Row(
                                          children: [
                                            Text(
                                              "Previous Due ",
                                              style: Style(
                                                  14,
                                                  Color(0xff000000),
                                                  FontWeight.w600),
                                            ),
                                            Text(
                                              "01 January 2022",
                                              style: Style(
                                                  12,
                                                  Color(0xff000000),
                                                  FontWeight.w400),
                                            )
                                          ],
                                        )),
                                  )),
                            ],
                          ),
                        )),
                    Expanded(
                        flex: 2,
                        child: Container(
                          decoration: BoxDecoration(
                            color: Color(0xff10AB83).withOpacity(0.3),
                            border: Border(
                              right: BorderSide(
                                color: Color(0xff10AB83),
                              ),
                              top: BorderSide(
                                color: Color(0xff10AB83),
                              ),
                              bottom: BorderSide(
                                color: Color(0xff10AB83),
                              ),
                            ),
                          ),
                          width: double.infinity,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Text(
                                "Due",
                                style: Style2(
                                    12, Color(0xff000000), FontWeight.w500),
                              ),
                              Text("৳ 20000",
                                  style: Style2(
                                      12, Color(0xffF37048), FontWeight.w600)),
                              Text(
                                "",
                              ),
                            ],
                          ),
                        )),
                  ],
                ),
              ),
              Container(
                height: 490,
                width: double.infinity,
                //color: Color.fromARGB(255, 98, 64, 61),
                child: Row(
                  children: [
                    Expanded(
                      flex: 8,
                      child: Container(
                        //color: Color(0xff10AB83),
                        child: Column(
                          children: [
                            Expanded(
                                flex: 2,
                                child: Container(
                                  width: double.infinity,
                                  color: Color(0xff10AB83),
                                  child: Padding(
                                    padding:
                                        const EdgeInsets.fromLTRB(15, 4, 0, 4),
                                    child: Text(
                                      "Purchase",
                                      style: Style(14, Color(0xffFFFFFF),
                                          FontWeight.w600),
                                    ),
                                  ),
                                )),
                            Expanded(
                                flex: 4,
                                child: Container(
                                    width: double.infinity,
                                    color: Color(0xff10AB83).withOpacity(0.3),
                                    child: Padding(
                                      padding: const EdgeInsets.fromLTRB(
                                          15, 15, 0, 4),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Row(
                                            children: [
                                              Text(
                                                "Invoice Date: ",
                                                style: Style(
                                                    12,
                                                    Color(0xff000000),
                                                    FontWeight.w500),
                                              ),
                                              Text(
                                                "01 January 2022",
                                                style: Style(
                                                    12,
                                                    Color(0xff000000),
                                                    FontWeight.w600),
                                              )
                                            ],
                                          ),
                                          SizedBox(
                                            height: 7,
                                          ),
                                          Row(
                                            children: [
                                              Text(
                                                "Invoice No: ",
                                                style: Style(
                                                    12,
                                                    Color(0xff000000),
                                                    FontWeight.w500),
                                              ),
                                              Text(
                                                "5386328",
                                                style: Style(
                                                    12,
                                                    Color(0xff000000),
                                                    FontWeight.w600),
                                              )
                                            ],
                                          )
                                        ],
                                      ),
                                    ))),
                            Expanded(
                              flex: 7,
                              child: Container(
                                width: double.infinity,
                                color: Color.fromARGB(255, 50, 63, 60),
                                child: Row(
                                  children: [
                                    Expanded(
                                      flex: 6,
                                      child: Container(
                                        decoration: BoxDecoration(
                                          color: Color(0xffFFFFFF),
                                          border: Border(
                                            right: BorderSide(
                                              color: Color(0xff10AB83),
                                            ),
                                            top: BorderSide(
                                              color: Color(0xff10AB83),
                                            ),
                                            bottom: BorderSide(
                                              color: Color(0xff10AB83),
                                            ),
                                            left: BorderSide(
                                              color: Color(0xff10AB83),
                                            ),
                                          ),
                                        ),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceAround,
                                          children: [
                                            Padding(
                                              padding:
                                                  const EdgeInsets.fromLTRB(
                                                      15, 0, 0, 0),
                                              child: Column(
                                                children: [
                                                  Text(
                                                    "Test product 01",
                                                    style: Style(
                                                        12,
                                                        Color(0xff000000),
                                                        FontWeight.w600),
                                                  ),
                                                  Text(
                                                    "200 pcs x 200",
                                                    style: Style(
                                                        12,
                                                        Color(0xff000000),
                                                        FontWeight.w400),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            Padding(
                                              padding:
                                                  const EdgeInsets.fromLTRB(
                                                      15, 0, 0, 0),
                                              child: Column(
                                                children: [
                                                  Text(
                                                    "Test product 01",
                                                    style: Style(
                                                        12,
                                                        Color(0xff000000),
                                                        FontWeight.w600),
                                                  ),
                                                  Text(
                                                    "20 pcs x 300",
                                                    style: Style(
                                                        12,
                                                        Color(0xff000000),
                                                        FontWeight.w400),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            Padding(
                                              padding:
                                                  const EdgeInsets.fromLTRB(
                                                      15, 0, 0, 0),
                                              child: Column(
                                                children: [
                                                  Text(
                                                    "Test product 01",
                                                    style: Style(
                                                        12,
                                                        Color(0xff000000),
                                                        FontWeight.w600),
                                                  ),
                                                  Text(
                                                    "20 pcs x 200",
                                                    style: Style(
                                                        12,
                                                        Color(0xff000000),
                                                        FontWeight.w400),
                                                  )
                                                ],
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                    Expanded(
                                      flex: 2,
                                      child: Container(
                                        decoration: BoxDecoration(
                                          color: Color(0xffFFFFFF),
                                          border: Border(
                                            top: BorderSide(
                                              color: Color(0xff10AB83),
                                            ),
                                            bottom: BorderSide(
                                              color: Color(0xff10AB83),
                                            ),
                                          ),
                                        ),
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceAround,
                                          children: [
                                            Padding(
                                              padding:
                                                  const EdgeInsets.only(top: 8),
                                              child: Text(
                                                "৳ 40000",
                                                style: Style(
                                                    12,
                                                    Color(0xff000000),
                                                    FontWeight.w600),
                                              ),
                                            ),
                                            Text(
                                              "৳ 6000",
                                              style: Style(
                                                  12,
                                                  Color(0xff000000),
                                                  FontWeight.w600),
                                            ),
                                            Text(
                                              "৳ 4000",
                                              style: Style(
                                                  12,
                                                  Color(0xff000000),
                                                  FontWeight.w600),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Expanded(
                                flex: 4,
                                child: Container(
                                  width: double.infinity,
                                  color: Color.fromARGB(255, 35, 37, 40),
                                  child: Row(
                                    children: [
                                      Expanded(
                                        flex: 6,
                                        child: Container(
                                          decoration: BoxDecoration(
                                            color: Color(0xffFFFFFF),
                                            border: Border(
                                              left: BorderSide(
                                                color: Color(0xff10AB83),
                                              ),
                                              right: BorderSide(
                                                color: Color(0xff10AB83),
                                              ),
                                              bottom: BorderSide(
                                                color: Color(0xff10AB83),
                                              ),
                                            ),
                                          ),
                                          child: Padding(
                                            padding: const EdgeInsets.fromLTRB(
                                                15, 0, 0, 0),
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.spaceAround,
                                              children: [
                                                Text(
                                                  "Discount",
                                                  style: Style(
                                                      12,
                                                      Color(0xff000000),
                                                      FontWeight.w600),
                                                ),
                                                Text(
                                                  "VAT",
                                                  style: Style(
                                                      12,
                                                      Color(0xff000000),
                                                      FontWeight.w600),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ),
                                      Expanded(
                                        flex: 2,
                                        child: Container(
                                          decoration: BoxDecoration(
                                            color: Color(0xffFFFFFF),
                                            border: Border(
                                              bottom: BorderSide(
                                                color: Color(0xff10AB83),
                                              ),
                                            ),
                                          ),
                                          child: Padding(
                                            padding: const EdgeInsets.only(
                                                right: 20),
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.end,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.spaceAround,
                                              children: [
                                                Text(
                                                  "৳ 0",
                                                  style: Style(
                                                      12,
                                                      Color(0xff000000),
                                                      FontWeight.w600),
                                                ),
                                                Text(
                                                  "৳ 0",
                                                  style: Style(
                                                      12,
                                                      Color(0xff000000),
                                                      FontWeight.w600),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                )),
                            Expanded(
                              flex: 4,
                              child: Container(
                                width: double.infinity,
                                color: Color.fromARGB(255, 158, 16, 171),
                                child: Row(
                                  children: [
                                    Expanded(
                                      flex: 6,
                                      child: Container(
                                        decoration: BoxDecoration(
                                          color: Color(0xffFFFFFF),
                                          border: Border(
                                            left: BorderSide(
                                              color: Color(0xff10AB83),
                                            ),
                                            right: BorderSide(
                                              color: Color(0xff10AB83),
                                            ),
                                            bottom: BorderSide(
                                              color: Color(0xff10AB83),
                                            ),
                                          ),
                                        ),
                                        child: Padding(
                                          padding: const EdgeInsets.fromLTRB(
                                              15, 0, 0, 0),
                                          child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceAround,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                "Grand Total",
                                                style: Style(
                                                    12,
                                                    Color(0xff000000),
                                                    FontWeight.w600),
                                              ),
                                              Text(
                                                "Previous Due",
                                                style: Style(
                                                    12,
                                                    Color(0xff000000),
                                                    FontWeight.w600),
                                              )
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                    Expanded(
                                      flex: 2,
                                      child: Container(
                                        decoration: BoxDecoration(
                                          color: Color(0xffFFFFFF),
                                          border: Border(
                                            bottom: BorderSide(
                                              color: Color(0xff10AB83),
                                            ),
                                          ),
                                        ),
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceAround,
                                          children: [
                                            Text(
                                              "৳ 50000",
                                              style: Style(
                                                  12,
                                                  Color(0xff000000),
                                                  FontWeight.w600),
                                            ),
                                            Text(
                                              "৳ 20000",
                                              style: Style(
                                                  12,
                                                  Color(0xff000000),
                                                  FontWeight.w600),
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Expanded(
                              flex: 4,
                              child: Container(
                                width: double.infinity,
                                color: Color.fromARGB(255, 16, 171, 26),
                                child: Row(
                                  children: [
                                    Expanded(
                                      flex: 6,
                                      child: Container(
                                        decoration: BoxDecoration(
                                          color: Color(0xffFFFFFF),
                                          border: Border(
                                            left: BorderSide(
                                              color: Color(0xff10AB83),
                                            ),
                                            right: BorderSide(
                                              color: Color(0xff10AB83),
                                            ),
                                            bottom: BorderSide(
                                              color: Color(0xff10AB83),
                                            ),
                                          ),
                                        ),
                                        child: Padding(
                                          padding: const EdgeInsets.fromLTRB(
                                              15, 0, 0, 0),
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceAround,
                                            children: [
                                              Text(
                                                "Total Amount",
                                                style: Style(
                                                    12,
                                                    Color(0xff000000),
                                                    FontWeight.w600),
                                              ),
                                              Text(
                                                "Total Payment",
                                                style: Style(
                                                    12,
                                                    Color(0xff000000),
                                                    FontWeight.w600),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                    Expanded(
                                      flex: 2,
                                      child: Container(
                                        decoration: BoxDecoration(
                                          color: Color(0xffFFFFFF),
                                          border: Border(
                                            bottom: BorderSide(
                                              color: Color(0xff10AB83),
                                            ),
                                          ),
                                        ),
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceAround,
                                          children: [
                                            Text(
                                              "৳ 70000",
                                              style: Style(
                                                  12,
                                                  Color(0xff000000),
                                                  FontWeight.w600),
                                            ),
                                            Text(
                                              "৳ 40000",
                                              style: Style(
                                                  12,
                                                  Color(0xff000000),
                                                  FontWeight.w600),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Expanded(
                              flex: 2,
                              child: Container(
                                width: double.infinity,
                                color: Color.fromARGB(255, 73, 81, 79),
                                child: Row(
                                  children: [
                                    Expanded(
                                      flex: 6,
                                      child: Container(
                                        decoration: BoxDecoration(
                                          color: Color(0xffFFFFFF),
                                          border: Border(
                                            left: BorderSide(
                                              color: Color(0xff10AB83),
                                            ),
                                            right: BorderSide(
                                              color: Color(0xff10AB83),
                                            ),
                                            bottom: BorderSide(
                                              color: Color(0xff10AB83),
                                            ),
                                          ),
                                        ),
                                        child: Padding(
                                          padding: const EdgeInsets.fromLTRB(
                                              15, 0, 0, 0),
                                          child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceAround,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                "Remaining Balance",
                                                style: Style(
                                                    12,
                                                    Color(0xff000000),
                                                    FontWeight.w600),
                                              )
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                    Expanded(
                                      flex: 2,
                                      child: Container(
                                        decoration: BoxDecoration(
                                          color: Color(0xffFFFFFF),
                                          border: Border(
                                            bottom: BorderSide(
                                              color: Color(0xff10AB83),
                                            ),
                                          ),
                                        ),
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceAround,
                                          children: [
                                            Text(
                                              "৳ 30000",
                                              style: Style(
                                                  12,
                                                  Color(0xff000000),
                                                  FontWeight.w600),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 2,
                      child: Container(
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: Color(0xff10AB83).withOpacity(0.3),
                          border: Border(
                            right: BorderSide(
                              color: Color(0xff10AB83),
                            ),
                            left: BorderSide(
                              color: Color(0xff10AB83),
                            ),
                            bottom: BorderSide(
                              color: Color(0xff10AB83),
                            ),
                          ),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text(
                              "Due",
                              style: Style2(
                                  12, Color(0xff000000), FontWeight.w500),
                            ),
                            Text("৳ 30000",
                                style: Style2(
                                    12, Color(0xffF37048), FontWeight.w600)),
                            Text(
                              "",
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                height: 326,
                width: double.infinity,
                // color: Color.fromARGB(255, 71, 98, 61),
                child: Row(
                  children: [
                    Expanded(
                      flex: 8,
                      child: Container(
                        //color: Color(0xff10AB83),
                        child: Column(
                          children: [
                            Expanded(
                                flex: 2,
                                child: Container(
                                  width: double.infinity,
                                  color: Color(0xff10AB83),
                                  child: Padding(
                                    padding:
                                        const EdgeInsets.fromLTRB(15, 5, 0, 0),
                                    child: Text(
                                      "Payment",
                                      style: Style(14, Color(0xffFFFFFF),
                                          FontWeight.w600),
                                    ),
                                  ),
                                )),
                            Expanded(
                              flex: 4,
                              child: Container(
                                width: double.infinity,
                                color: Color(0xff10AB83).withOpacity(0.3),
                                child: Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(15, 0, 0, 0),
                                  child: Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        children: [
                                          Text(
                                            "Invoice Date: ",
                                            style: Style(12, Color(0xff000000),
                                                FontWeight.w500),
                                          ),
                                          Text(
                                            "01 January 2022",
                                            style: Style(12, Color(0xff000000),
                                                FontWeight.w600),
                                          )
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          Text(
                                            "Invoice No: ",
                                            style: Style(12, Color(0xff000000),
                                                FontWeight.w500),
                                          ),
                                          Text(
                                            "53863323",
                                            style: Style(12, Color(0xff000000),
                                                FontWeight.w600),
                                          ),
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            Expanded(
                                flex: 4,
                                child: Container(
                                  width: double.infinity,
                                  color: Color.fromARGB(255, 35, 37, 40),
                                  child: Row(
                                    children: [
                                      Expanded(
                                        flex: 6,
                                        child: Container(
                                          decoration: BoxDecoration(
                                            color: Color(0xffFFFFFF),
                                            border: Border(
                                              left: BorderSide(
                                                color: Color(0xff10AB83),
                                              ),
                                              right: BorderSide(
                                                color: Color(0xff10AB83),
                                              ),
                                              bottom: BorderSide(
                                                color: Color(0xff10AB83),
                                              ),
                                            ),
                                          ),
                                          child: Padding(
                                            padding: const EdgeInsets.fromLTRB(
                                                15, 0, 0, 0),
                                            child: Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.spaceAround,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  "Discount",
                                                  style: Style(
                                                      12,
                                                      Color(0xff000000),
                                                      FontWeight.w600),
                                                ),
                                                Text(
                                                  "VAT",
                                                  style: Style(
                                                      12,
                                                      Color(0xff000000),
                                                      FontWeight.w600),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ),
                                      Expanded(
                                        flex: 2,
                                        child: Container(
                                          decoration: BoxDecoration(
                                            color: Color(0xffFFFFFF),
                                            border: Border(
                                              bottom: BorderSide(
                                                color: Color(0xff10AB83),
                                              ),
                                            ),
                                          ),
                                          child: Padding(
                                            padding: const EdgeInsets.only(
                                                right: 20),
                                            child: Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.spaceAround,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.end,
                                              children: [
                                                Text(
                                                  "৳ 0",
                                                  style: Style(
                                                      12,
                                                      Color(0xff000000),
                                                      FontWeight.w600),
                                                ),
                                                Text(
                                                  "৳ 0",
                                                  style: Style(
                                                      12,
                                                      Color(0xff000000),
                                                      FontWeight.w600),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                )),
                            Expanded(
                              flex: 4,
                              child: Container(
                                width: double.infinity,
                                color: Color.fromARGB(255, 158, 16, 171),
                                child: Row(
                                  children: [
                                    Expanded(
                                      flex: 6,
                                      child: Container(
                                        decoration: BoxDecoration(
                                          color: Color(0xffFFFFFF),
                                          border: Border(
                                            left: BorderSide(
                                              color: Color(0xff10AB83),
                                            ),
                                            right: BorderSide(
                                              color: Color(0xff10AB83),
                                            ),
                                            bottom: BorderSide(
                                              color: Color(0xff10AB83),
                                            ),
                                          ),
                                        ),
                                        child: Padding(
                                          padding: const EdgeInsets.fromLTRB(
                                              15, 0, 0, 0),
                                          child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceAround,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                "Grand Total",
                                                style: Style(
                                                    12,
                                                    Color(0xff000000),
                                                    FontWeight.w600),
                                              ),
                                              Text(
                                                "Previous Due",
                                                style: Style(
                                                    12,
                                                    Color(0xff000000),
                                                    FontWeight.w600),
                                              )
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                    Expanded(
                                      flex: 2,
                                      child: Container(
                                        decoration: BoxDecoration(
                                          color: Color(0xffFFFFFF),
                                          border: Border(
                                            bottom: BorderSide(
                                              color: Color(0xff10AB83),
                                            ),
                                          ),
                                        ),
                                        child: Padding(
                                          padding:
                                              const EdgeInsets.only(right: 20),
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.end,
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceAround,
                                            children: [
                                              Text(
                                                "৳ 0",
                                                style: Style(
                                                    12,
                                                    Color(0xff000000),
                                                    FontWeight.w600),
                                              ),
                                              Text(
                                                "৳ 30000",
                                                style: Style(
                                                    12,
                                                    Color(0xff000000),
                                                    FontWeight.w600),
                                              )
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Expanded(
                              flex: 4,
                              child: Container(
                                width: double.infinity,
                                color: Color.fromARGB(255, 16, 171, 26),
                                child: Row(
                                  children: [
                                    Expanded(
                                      flex: 6,
                                      child: Container(
                                        decoration: BoxDecoration(
                                          color: Color(0xffFFFFFF),
                                          border: Border(
                                            left: BorderSide(
                                              color: Color(0xff10AB83),
                                            ),
                                            right: BorderSide(
                                              color: Color(0xff10AB83),
                                            ),
                                            bottom: BorderSide(
                                              color: Color(0xff10AB83),
                                            ),
                                          ),
                                        ),
                                        child: Padding(
                                          padding: const EdgeInsets.fromLTRB(
                                              15, 0, 0, 0),
                                          child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceAround,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                "Total Amount",
                                                style: Style(
                                                    12,
                                                    Color(0xff000000),
                                                    FontWeight.w600),
                                              ),
                                              Text(
                                                "Total Payment",
                                                style: Style(
                                                    12,
                                                    Color(0xff000000),
                                                    FontWeight.w600),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                    Expanded(
                                      flex: 2,
                                      child: Container(
                                        decoration: BoxDecoration(
                                          color: Color(0xffFFFFFF),
                                          border: Border(
                                            bottom: BorderSide(
                                              color: Color(0xff10AB83),
                                            ),
                                          ),
                                        ),
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceAround,
                                          children: [
                                            Text(
                                              "৳ 30000",
                                              style: Style(
                                                  12,
                                                  Color(0xff000000),
                                                  FontWeight.w600),
                                            ),
                                            Text(
                                              "৳ 10000",
                                              style: Style(
                                                  12,
                                                  Color(0xff000000),
                                                  FontWeight.w600),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Expanded(
                              flex: 2,
                              child: Container(
                                width: double.infinity,
                                color: Color.fromARGB(255, 73, 81, 79),
                                child: Row(
                                  children: [
                                    Expanded(
                                      flex: 6,
                                      child: Container(
                                        decoration: BoxDecoration(
                                          color: Color(0xffFFFFFF),
                                          border: Border(
                                            left: BorderSide(
                                              color: Color(0xff10AB83),
                                            ),
                                            right: BorderSide(
                                              color: Color(0xff10AB83),
                                            ),
                                            bottom: BorderSide(
                                              color: Color(0xff10AB83),
                                            ),
                                          ),
                                        ),
                                        child: Padding(
                                          padding: const EdgeInsets.fromLTRB(
                                              15, 4, 0, 0),
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                "Remaining Balance",
                                                style: Style(
                                                    12,
                                                    Color(0xff000000),
                                                    FontWeight.w600),
                                              )
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                    Expanded(
                                      flex: 2,
                                      child: Container(
                                        decoration: BoxDecoration(
                                          color: Color(0xffFFFFFF),
                                          border: Border(
                                            bottom: BorderSide(
                                              color: Color(0xff10AB83),
                                            ),
                                          ),
                                        ),
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceAround,
                                          children: [
                                            Text(
                                              "৳ 20000",
                                              style: Style(
                                                  12,
                                                  Color(0xff000000),
                                                  FontWeight.w600),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 2,
                      child: Container(
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: Color(0xff10AB83).withOpacity(0.3),
                          border: Border(
                            right: BorderSide(
                              color: Color(0xff10AB83),
                            ),
                            left: BorderSide(
                              color: Color(0xff10AB83),
                            ),
                            bottom: BorderSide(
                              color: Color(0xff10AB83),
                            ),
                          ),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text(
                              "Due",
                              style: Style2(
                                  12, Color(0xff000000), FontWeight.w500),
                            ),
                            Text("\$20000",
                                style: Style2(
                                    12, Color(0xffF37048), FontWeight.w600)),
                            Text(
                              "",
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                height: 453,
                width: double.infinity,
                // color: Color.fromARGB(255, 67, 233, 6),
                child: Row(
                  children: [
                    Expanded(
                      flex: 8,
                      child: Container(
                        //color: Color(0xff10AB83),
                        child: Column(
                          children: [
                            Expanded(
                                flex: 2,
                                child: Container(
                                  width: double.infinity,
                                  color: Color(0xff10AB83),
                                  child: Padding(
                                    padding:
                                        const EdgeInsets.fromLTRB(15, 4, 0, 0),
                                    child: Text(
                                      "Return",
                                      style: Style(14, Color(0xffFFFFFF),
                                          FontWeight.w600),
                                    ),
                                  ),
                                )),
                            Expanded(
                              flex: 4,
                              child: Container(
                                width: double.infinity,
                                decoration: BoxDecoration(
                                  color: Color(0xff10AB83).withOpacity(0.3),
                                  border: Border(
                                    left: BorderSide(
                                      color: Color(0xff10AB83),
                                    ),
                                    bottom: BorderSide(
                                      color: Color(0xff10AB83),
                                    ),
                                  ),
                                ),
                                child: Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(15, 0, 0, 0),
                                  child: Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        children: [
                                          Text(
                                            "Invoice Date: ",
                                            style: Style(12, Color(0xff000000),
                                                FontWeight.w500),
                                          ),
                                          Text(
                                            "01 January 2022",
                                            style: Style(12, Color(0xff000000),
                                                FontWeight.w600),
                                          )
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          Text(
                                            "Invoice No: ",
                                            style: Style(12, Color(0xff000000),
                                                FontWeight.w500),
                                          ),
                                          Text(
                                            "5386328",
                                            style: Style(12, Color(0xff000000),
                                                FontWeight.w600),
                                          )
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            Expanded(
                              flex: 4,
                              child: Container(
                                width: double.infinity,
                                decoration: BoxDecoration(
                                  color: Color(0xff10AB83).withOpacity(0.3),
                                  border: Border(
                                    left: BorderSide(
                                      color: Color(0xff10AB83),
                                    ),
                                    bottom: BorderSide(
                                      color: Color(0xff10AB83),
                                    ),
                                  ),
                                ),
                                child: Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(15, 0, 0, 0),
                                  child: Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        children: [
                                          Text(
                                            "Return Date: ",
                                            style: Style(12, Color(0xff000000),
                                                FontWeight.w500),
                                          ),
                                          Text(
                                            "01 January 2022",
                                            style: Style(12, Color(0xff000000),
                                                FontWeight.w600),
                                          )
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          Text(
                                            "Return No: ",
                                            style: Style(12, Color(0xff000000),
                                                FontWeight.w500),
                                          ),
                                          Text(
                                            "5386328",
                                            style: Style(12, Color(0xff000000),
                                                FontWeight.w600),
                                          )
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            Expanded(
                                flex: 4,
                                child: Container(
                                  width: double.infinity,
                                  color: Color.fromARGB(255, 35, 37, 40),
                                  child: Row(
                                    children: [
                                      Expanded(
                                        flex: 6,
                                        child: Container(
                                          decoration: BoxDecoration(
                                            color: Color(0xffFFFFFF),
                                            border: Border(
                                              left: BorderSide(
                                                color: Color(0xff10AB83),
                                              ),
                                              right: BorderSide(
                                                color: Color(0xff10AB83),
                                              ),
                                              bottom: BorderSide(
                                                color: Color(0xff10AB83),
                                              ),
                                            ),
                                          ),
                                          child: Padding(
                                            padding: const EdgeInsets.fromLTRB(
                                                15, 0, 0, 0),
                                            child: Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.spaceAround,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  "Test product01",
                                                  style: Style(
                                                      12,
                                                      Color(0xff000000),
                                                      FontWeight.w600),
                                                ),
                                                Text(
                                                  "100 pcs x 50",
                                                  style: Style(
                                                      12,
                                                      Color(0xff000000),
                                                      FontWeight.w400),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ),
                                      Expanded(
                                        flex: 2,
                                        child: Container(
                                          decoration: BoxDecoration(
                                            color: Color(0xffFFFFFF),
                                            border: Border(
                                              bottom: BorderSide(
                                                color: Color(0xff10AB83),
                                              ),
                                            ),
                                          ),
                                          child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.end,
                                            children: [
                                              Text(
                                                "৳ 50000",
                                                style: Style(
                                                    12,
                                                    Color(0xff000000),
                                                    FontWeight.w600),
                                              ),
                                              Text("")
                                            ],
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                )),
                            Expanded(
                              flex: 4,
                              child: Container(
                                width: double.infinity,
                                color: Color.fromARGB(255, 158, 16, 171),
                                child: Row(
                                  children: [
                                    Expanded(
                                      flex: 6,
                                      child: Container(
                                        decoration: BoxDecoration(
                                          color: Color(0xffFFFFFF),
                                          border: Border(
                                            left: BorderSide(
                                              color: Color(0xff10AB83),
                                            ),
                                            right: BorderSide(
                                              color: Color(0xff10AB83),
                                            ),
                                            bottom: BorderSide(
                                              color: Color(0xff10AB83),
                                            ),
                                          ),
                                        ),
                                        child: Padding(
                                          padding: const EdgeInsets.fromLTRB(
                                              15, 0, 0, 0),
                                          child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceAround,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                "Discount",
                                                style: Style(
                                                    12,
                                                    Color(0xff000000),
                                                    FontWeight.w600),
                                              ),
                                              Text(
                                                "VAT",
                                                style: Style(
                                                    12,
                                                    Color(0xff000000),
                                                    FontWeight.w600),
                                              )
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                    Expanded(
                                      flex: 2,
                                      child: Container(
                                        decoration: BoxDecoration(
                                          color: Color(0xffFFFFFF),
                                          border: Border(
                                            bottom: BorderSide(
                                              color: Color(0xff10AB83),
                                            ),
                                          ),
                                        ),
                                        child: Padding(
                                          padding:
                                              const EdgeInsets.only(right: 20),
                                          child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceAround,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.end,
                                            children: [
                                              Text(
                                                "৳ 0",
                                                style: Style(
                                                    12,
                                                    Color(0xff000000),
                                                    FontWeight.w600),
                                              ),
                                              Text(
                                                "৳ 0",
                                                style: Style(
                                                    12,
                                                    Color(0xff000000),
                                                    FontWeight.w600),
                                              )
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Expanded(
                              flex: 4,
                              child: Container(
                                width: double.infinity,
                                color: Color.fromARGB(255, 16, 171, 26),
                                child: Row(
                                  children: [
                                    Expanded(
                                      flex: 6,
                                      child: Container(
                                        decoration: BoxDecoration(
                                          color: Color(0xffFFFFFF),
                                          border: Border(
                                            left: BorderSide(
                                              color: Color(0xff10AB83),
                                            ),
                                            right: BorderSide(
                                              color: Color(0xff10AB83),
                                            ),
                                            bottom: BorderSide(
                                              color: Color(0xff10AB83),
                                            ),
                                          ),
                                        ),
                                        child: Padding(
                                          padding: const EdgeInsets.fromLTRB(
                                              15, 0, 0, 0),
                                          child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceAround,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                "Grand Total",
                                                style: Style(
                                                    12,
                                                    Color(0xff000000),
                                                    FontWeight.w600),
                                              ),
                                              Text(
                                                "Previous Due",
                                                style: Style(
                                                    12,
                                                    Color(0xff000000),
                                                    FontWeight.w600),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                    Expanded(
                                      flex: 2,
                                      child: Container(
                                        decoration: BoxDecoration(
                                          color: Color(0xffFFFFFF),
                                          border: Border(
                                            bottom: BorderSide(
                                              color: Color(0xff10AB83),
                                            ),
                                          ),
                                        ),
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceAround,
                                          children: [
                                            Text(
                                              "৳ 5000",
                                              style: Style(
                                                  12,
                                                  Color(0xff000000),
                                                  FontWeight.w600),
                                            ),
                                            Text(
                                              "৳ 20000",
                                              style: Style(
                                                  12,
                                                  Color(0xff000000),
                                                  FontWeight.w600),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Expanded(
                              flex: 4,
                              child: Container(
                                width: double.infinity,
                                color: Color.fromARGB(255, 16, 171, 26),
                                child: Row(
                                  children: [
                                    Expanded(
                                      flex: 6,
                                      child: Container(
                                        decoration: BoxDecoration(
                                          color: Color(0xffFFFFFF),
                                          border: Border(
                                            left: BorderSide(
                                              color: Color(0xff10AB83),
                                            ),
                                            right: BorderSide(
                                              color: Color(0xff10AB83),
                                            ),
                                            bottom: BorderSide(
                                              color: Color(0xff10AB83),
                                            ),
                                          ),
                                        ),
                                        child: Padding(
                                          padding: const EdgeInsets.fromLTRB(
                                              15, 0, 0, 0),
                                          child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceAround,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                "Total Amount",
                                                style: Style(
                                                    12,
                                                    Color(0xff000000),
                                                    FontWeight.w600),
                                              ),
                                              Text(
                                                "Total Paid",
                                                style: Style(
                                                    12,
                                                    Color(0xff000000),
                                                    FontWeight.w600),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                    Expanded(
                                      flex: 2,
                                      child: Container(
                                        decoration: BoxDecoration(
                                          color: Color(0xffFFFFFF),
                                          border: Border(
                                            bottom: BorderSide(
                                              color: Color(0xff10AB83),
                                            ),
                                          ),
                                        ),
                                        child: Padding(
                                          padding:
                                              const EdgeInsets.only(right: 20),
                                          child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceAround,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.end,
                                            children: [
                                              Text(
                                                "৳ 15000",
                                                style: Style(
                                                    12,
                                                    Color(0xff000000),
                                                    FontWeight.w600),
                                              ),
                                              Text(
                                                "৳ 0",
                                                style: Style(
                                                    12,
                                                    Color(0xff000000),
                                                    FontWeight.w600),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Expanded(
                              flex: 2,
                              child: Container(
                                width: double.infinity,
                                color: Color.fromARGB(255, 73, 81, 79),
                                child: Row(
                                  children: [
                                    Expanded(
                                      flex: 6,
                                      child: Container(
                                        decoration: BoxDecoration(
                                          color: Color(0xffFFFFFF),
                                          border: Border(
                                            left: BorderSide(
                                              color: Color(0xff10AB83),
                                            ),
                                            right: BorderSide(
                                              color: Color(0xff10AB83),
                                            ),
                                            bottom: BorderSide(
                                              color: Color(0xff10AB83),
                                            ),
                                          ),
                                        ),
                                        child: Padding(
                                          padding: const EdgeInsets.fromLTRB(
                                              15, 4, 0, 0),
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                "Remaining Balance",
                                                style: Style(
                                                    12,
                                                    Color(0xff000000),
                                                    FontWeight.w600),
                                              )
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                    Expanded(
                                      flex: 2,
                                      child: Container(
                                        decoration: BoxDecoration(
                                          color: Color(0xffFFFFFF),
                                          border: Border(
                                            bottom: BorderSide(
                                              color: Color(0xff10AB83),
                                            ),
                                          ),
                                        ),
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceAround,
                                          children: [
                                            Text(
                                              "৳ 15000",
                                              style: Style(
                                                  12,
                                                  Color(0xff000000),
                                                  FontWeight.w600),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 2,
                      child: Container(
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: Color(0xff10AB83).withOpacity(0.3),
                          border: Border(
                            right: BorderSide(
                              color: Color(0xff10AB83),
                            ),
                            left: BorderSide(
                              color: Color(0xff10AB83),
                            ),
                            bottom: BorderSide(
                              color: Color(0xff10AB83),
                            ),
                          ),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text(
                              "Due",
                              style: Style2(
                                  12, Color(0xff000000), FontWeight.w500),
                            ),
                            Text(
                              "\$20000",
                              style: Style2(
                                  12, Color(0xffF37048), FontWeight.w600),
                            ),
                            Text(
                              "",
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                  decoration: BoxDecoration(
                      color: Color(0xff10AB83),
                      borderRadius: BorderRadius.circular(4)),
                  width: double.infinity,
                  height: 48,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        'images/pay.png',
                        height: 14,
                        width: 16,
                      ),
                      Text(
                        "Pay the balance",
                        style: Style(16, Color(0xffFFFFFF), FontWeight.w600),
                      ),
                    ],
                  )),
            ],
          ),
        ),
      ),
    );
  }
}

Style2(double? size, Color clr, [FontWeight? fw]) {
  return GoogleFonts.inter(color: clr, fontSize: size, fontWeight: fw);
}

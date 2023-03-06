import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:shopping_app_ui/drawer/mainPage.dart';
import 'package:shopping_app_ui/navbar/navbar.dart';
import 'package:shopping_app_ui/style/my_style.dart';
import 'package:sizer/sizer.dart';

class splash_screen extends StatefulWidget {
  const splash_screen({super.key});

  @override
  State<splash_screen> createState() => _splash_screenState();
}

class _splash_screenState extends State<splash_screen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(
      Duration(seconds: 3),
      () {
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (context) => Home()));
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        Container(
          child: Image.asset(
            "images/unsplash.jpg",
            height: double.infinity,
            fit: BoxFit.cover,
          ),
        ),
        Positioned.fill(
            child: Align(
          alignment: Alignment.center,
          child: Text(
            "OXY BOOTS",
            style: myStyle(28, Color(0xffFFFFFF), FontWeight.w700),
          ),
        ))
      ],
    ));
  }
}

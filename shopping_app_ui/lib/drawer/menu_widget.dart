import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
import 'package:sizer/sizer.dart';

class DrawerWidget extends StatelessWidget {
  const DrawerWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        ZoomDrawer.of(context)!.toggle();
      },
      child: Container(
        margin: EdgeInsets.only(left: 1.h),
        // height: 40,
        // width: 40,
        decoration: BoxDecoration(
          color: Color(0xffFFFFFF),
          borderRadius: BorderRadius.circular(50),
        ),
        child: Image.asset(
          "images/menu.png",
        ),
      ),
    );
  }
}

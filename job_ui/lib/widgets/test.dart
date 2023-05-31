import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class testPage extends StatefulWidget {
  final String companyName;
  testPage(this.companyName);

  @override
  State<testPage> createState() => _testPageState();
}

class _testPageState extends State<testPage> {
  @override
  Widget build(BuildContext context) {
    String imagePath = "";

    if (widget.companyName == "Airbnb inc,") {
      imagePath = "images/1.png";
    } else if (widget.companyName == "Google") {
      imagePath = "images/2.png";
    }

    return Scaffold(
      body: Center(
          child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("${widget.companyName}"),
          Image.asset(
            imagePath,
            height: 20,
          )
        ],
      )),
    );
  }
}

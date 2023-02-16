import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:task_list/style/my_style.dart';

class TopPart extends StatefulWidget {
  const TopPart({super.key});

  @override
  State<TopPart> createState() => _TopPartState();
}

class _TopPartState extends State<TopPart> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Hi, Habib 👋",
                style: myStyle(18, Color(0xffFFFFFF), FontWeight.w600),
              ),
              SizedBox(
                height: 7,
              ),
              Text(
                "Let's explore your notes",
                style: myStyle(
                    12, Color(0xffFFFFFF).withOpacity(0.7), FontWeight.w400),
              ),
            ],
          ),
          Container(
            height: 45,
            width: 45,
            decoration: BoxDecoration(
              color: Color(0xff24966D),
              borderRadius: BorderRadius.circular(50),
            ),
            child: Image.asset(
              "images/profile.png",
            ),
          ),
        ],
      ),
    );
  }
}

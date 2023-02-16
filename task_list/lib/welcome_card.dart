import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:task_list/style/my_style.dart';

class WelcomeCard extends StatefulWidget {
  const WelcomeCard({super.key});

  @override
  State<WelcomeCard> createState() => _WelcomeCardState();
}

class _WelcomeCardState extends State<WelcomeCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
        height: 160,
        width: double.infinity,
        decoration: BoxDecoration(
          color: Color(0xffFFFFFF).withOpacity(.1),
          borderRadius: BorderRadius.circular(30),
        ),
        child: Stack(children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Welcome to TickTick Task",
                style: myStyle(14, Color(0xffFFFFFF), FontWeight.w600),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "Your one-stop app for task management. Simplify, track, and accomplish tasks with ease",
                style: myStyle(
                    12, Color(0xffFFFFFF).withOpacity(0.7), FontWeight.w400),
              ),
              Row(
                //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset("images/Frame3.png"),
                  Image.asset("images/Group1.png"),
                ],
              ),
            ],
          ),
        ]),
      ),
    );
  }
}

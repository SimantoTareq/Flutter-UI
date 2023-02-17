import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:task_list/all_task.dart';
import 'package:task_list/style/my_style.dart';
import 'package:task_list/task_list.dart';
import 'package:task_list/top.dart';
import 'package:task_list/welcome_card.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF3F3F3),
      body: Column(
        children: [
          Stack(
            children: [
              Container(
                padding: EdgeInsets.fromLTRB(14, 20, 14, 0),
                height: 400,
                decoration: BoxDecoration(
                  color: Color(0xffF3F3F3),
                  // gradient: LinearGradient(
                  //     begin: Alignment.topLeft,
                  //     end: Alignment.topRight,
                  //     colors: [
                  //       Color(0xff0E4628),
                  //       Color(0xff0B3D2B),
                  //       Color(0xff053833)
                  //     ]),
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(40),
                      bottomRight: Radius.circular(40)),
                ),
              ),
              Container(
                padding: EdgeInsets.fromLTRB(14, 30, 14, 0),
                height: 340,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.topRight,
                      colors: [
                        Color(0xff0E4628),
                        Color(0xff0B3D2B),
                        Color(0xff053833)
                      ]),
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(40),
                      bottomRight: Radius.circular(40)),
                ),
                child: Column(
                  children: [
                    TopPart(),
                    SizedBox(
                      height: 20,
                    ),
                    WelcomeCard(),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Reminder Task",
                          style:
                              myStyle(14, Color(0xffFFFFFF), FontWeight.w600),
                        ),
                        Text(
                          "See All",
                          style: myStyle(12, Color(0xffFFFFFF).withOpacity(0.7),
                              FontWeight.w400),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                  ],
                ),
              ),
              Positioned(
                bottom: 25,
                left: 0,
                right: -16,
                child: TaskList(),
              )
            ],
          ),
          Expanded(child: AllTask())
        ],
      ),
    );
  }
}

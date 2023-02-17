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
        padding: EdgeInsets.fromLTRB(18, 15, 0, 0),
        height: 144,
        width: double.infinity,
        decoration: BoxDecoration(
          color: Color(0xffFFFFFF).withOpacity(.1),
          borderRadius: BorderRadius.circular(15),
        ),
        child: Stack(children: [
          Container(
            child: Column(
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
                  "Your one-stop app for task management. Simplify,\ntrack, and accomplish tasks with ease.",
                  style: myStyle(
                      12, Color(0xffFFFFFF).withOpacity(0.7), FontWeight.w400),
                ),
                SizedBox(
                  height: 18,
                ),
                //Image.asset("images/Frame3.png"),
                MaterialButton(
                  padding: EdgeInsets.fromLTRB(8, 0, 14, 0),
                  color: Color(0xff24966D),
                  shape: RoundedRectangleBorder(
                      side: BorderSide(color: Colors.white, width: .8),
                      borderRadius: BorderRadius.circular(20)),
                  onPressed: () {},
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      //Image.asset("images/Polygon.png"),
                      Icon(
                        Icons.play_arrow_rounded,
                        color: Colors.white,
                      ),
                      SizedBox(
                        width: 4,
                      ),
                      Text(
                        'Watch Video',
                        style: myStyle(12, Color(0xffFFFFFF), FontWeight.w500),
                      )
                    ],
                  ),
                ),

                // ElevatedButton(
                //   onPressed: () {
                //     debugPrint('ElevatedButton Clicked');
                //   },
                //   child: Row(
                //     mainAxisSize: MainAxisSize.min,
                //     children: [
                //       Icon(Icons.play_arrow),
                //       Text('Watch Video',
                //           style: myStyle(
                //               12, Color(0xffFFFFFF), FontWeight.w500)),
                //     ],
                //   ),
                //   style: ElevatedButton.styleFrom(
                //     backgroundColor: Color(0xff24966D),
                //     shape: StadiumBorder(),
                //     side: BorderSide(
                //         color: Color.fromARGB(255, 255, 255, 255), width: 1),
                //   ),
                // )
              ],
            ),
          ),
          Positioned(
            right: 3,
            bottom: 6,
            child: Container(
              child: Image.asset("images/Group1.png"),
            ),
          )
        ]),
      ),
    );
  }
}

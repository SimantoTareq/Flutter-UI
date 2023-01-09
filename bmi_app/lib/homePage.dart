import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool isMale = true;
  Color cardClr = Color(0xff111328);
  int weight = 60;
  int age = 20;
  int height = 180;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xff090E21),
        body: Container(
          margin: EdgeInsets.only(top: 20),
          width: double.infinity,
          child: Column(
            children: [
              Expanded(
                flex: 10,
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 12),
                  child: Row(
                    children: [
                      Expanded(
                        flex: 5,
                        child: InkWell(
                          onTap: () {
                            setState(() {
                              isMale = true;
                            });
                          },
                          child: Card(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(16)),
                            color: isMale == true ? Colors.teal : cardClr,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.male,
                                  size: 80,
                                  color: Colors.white,
                                ),
                                Text(
                                  'Male',
                                  style: TextStyle(
                                      color: Colors.grey, fontSize: 20),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 8,
                      ),
                      Expanded(
                        flex: 5,
                        child: InkWell(
                          onTap: () {
                            setState(() {
                              isMale = false;
                            });
                          },
                          child: Card(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(16)),
                            color: isMale == false ? Colors.teal : cardClr,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.female,
                                  size: 80,
                                  color: Colors.white,
                                ),
                                Text(
                                  'Female',
                                  style: TextStyle(
                                      color: Colors.grey, fontSize: 20),
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
                flex: 10,
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 12),
                  child: Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16)),
                    color: cardClr,
                    child: Column(
                      children: [
                        Text(
                          'Height',
                          style: TextStyle(color: Colors.grey, fontSize: 22),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.baseline,
                          textBaseline: TextBaseline.alphabetic,
                          children: [
                            Text(
                              "$height",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 40),
                            ),
                            Text(
                              'cm',
                              style:
                                  TextStyle(color: Colors.grey, fontSize: 14),
                            ),
                          ],
                        ),
                        SliderTheme(
                            data: SliderTheme.of(context).copyWith(
                                thumbShape: RoundSliderThumbShape(
                                  enabledThumbRadius: 15.0,
                                ),
                                overlayShape:
                                    RoundSliderOverlayShape(overlayRadius: 30),
                                thumbColor: Colors.pink,
                                overlayColor: Colors.grey,
                                activeTrackColor: Colors.white,
                                inactiveTickMarkColor: Colors.red),
                            child: Slider(
                              min: 50,
                              max: 210,
                              value: height.toDouble(),
                              onChanged: (double value) {
                                setState(() {
                                  height = value.toInt();
                                });
                              },
                            ))
                      ],
                    ),
                  ),
                ),
              ),
              Expanded(
                flex: 10,
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 12),
                  child: Row(
                    children: [
                      Expanded(
                          flex: 5,
                          child: Card(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(16)),
                            color: cardClr,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'Weight',
                                  style: TextStyle(color: Colors.grey),
                                ),
                                Text(
                                  "$weight",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 45),
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    FloatingActionButton(
                                      backgroundColor: Colors.white30,
                                      onPressed: () {
                                        setState(() {
                                          if (weight > 0) {
                                            weight--;
                                          }
                                        });
                                      },
                                      child: Icon(Icons.remove),
                                      isExtended: false,
                                    ),
                                    SizedBox(
                                      width: 6,
                                    ),
                                    FloatingActionButton(
                                      backgroundColor: Colors.white30,
                                      onPressed: () {
                                        setState(() {
                                          weight++;
                                        });
                                      },
                                      child: Icon(Icons.add),
                                      isExtended: true,
                                    ),
                                  ],
                                )
                              ],
                            ),
                          )),
                      SizedBox(
                        width: 8,
                      ),
                      Expanded(
                        flex: 5,
                        child: Card(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(16)),
                          color: cardClr,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'Age',
                                style: TextStyle(color: Colors.grey),
                              ),
                              Text(
                                "$age",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 45),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  FloatingActionButton(
                                    backgroundColor: Colors.white30,
                                    onPressed: () {
                                      setState(() {
                                        if (age > 0) {
                                          age--;
                                        }
                                      });
                                    },
                                    child: Icon(Icons.remove),
                                    isExtended: false,
                                  ),
                                  SizedBox(
                                    width: 6,
                                  ),
                                  FloatingActionButton(
                                    backgroundColor: Colors.white30,
                                    onPressed: () {
                                      setState(() {
                                        age++;
                                      });
                                    },
                                    child: Icon(Icons.add),
                                    isExtended: true,
                                  ),
                                ],
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
                  flex: 3,
                  child: InkWell(
                    onTap: () {
                      var heightSquare = height * height / 10000;
                      var result = weight / heightSquare;

                      showDialog(
                          barrierColor: cardClr,
                          context: context,
                          builder: (context) {
                            return AlertDialog(
                              backgroundColor: Color(0xffD5C9F9),
                              title: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    'BMI Result',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 30,
                                        fontWeight: FontWeight.w600),
                                  ),
                                ],
                              ),
                              content: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Text(
                                    "${result.toStringAsFixed(2)}",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 20),
                                  ),
                                  Text(
                                    result <= 19
                                        ? "You are under weight 🍔"
                                        : result <= 25
                                            ? "You are perfect 👌"
                                            : "You are over wight 🏋️",
                                    style: TextStyle(
                                        fontSize: 20,
                                        color: Colors.white,
                                        fontWeight: FontWeight.w500),
                                  ),
                                ],
                              ),
                            );
                          });
                    },
                    child: Container(
                      margin: EdgeInsets.only(bottom: 20),
                      color: Color(0xffEB1555),
                      alignment: Alignment.center,
                      child: Text(
                        'Calculate',
                        style: TextStyle(fontSize: 25, color: Colors.white),
                      ),
                    ),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/cupertino.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:task_list/style/my_style.dart';

class AllTask extends StatefulWidget {
  const AllTask({super.key});

  @override
  State<AllTask> createState() => _AllTaskState();
}

class _AllTaskState extends State<AllTask> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "All Tasks",
                style: myStyle(14, Color(0xff042E2B), FontWeight.w600),
              ),
              Text(
                "See All",
                style: myStyle(
                    12, Color(0xff042E2B).withOpacity(0.7), FontWeight.w400),
              ),
            ],
          ),
          Expanded(
            child: Container(
              //height: double.infinity,
              child: ListView.separated(
                  shrinkWrap: true,
                  // physics: NeverScrollableScrollPhysics(),
                  primary: true,
                  scrollDirection: Axis.vertical,
                  itemBuilder: (context, index) {
                    return Container(
                      padding:
                          EdgeInsets.symmetric(vertical: 14, horizontal: 10),
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 255, 255, 255),
                        borderRadius: BorderRadius.circular(8),
                        boxShadow: [
                          BoxShadow(
                            color: Color.fromARGB(255, 213, 213, 213),
                            spreadRadius: 1,
                            blurRadius: 1.5,
                            offset: Offset(0, 3), // changes position of shadow
                          ),
                        ],
                      ),
                      child: Row(
                        children: [
                          Image.asset('images/to-do-list1.1.png'),
                          SizedBox(
                            width: 14,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Online Class Routine",
                                style: myStyle(
                                    12, Color(0xff042E2B), FontWeight.w500),
                              ),
                              SizedBox(
                                height: 7,
                              ),
                              Text(
                                "Save Data: 10/2/2022",
                                style: myStyle(
                                    10,
                                    Color(0xff042E2B).withOpacity(.5),
                                    FontWeight.w400),
                              ),
                            ],
                          )
                        ],
                      ),
                    );
                  },
                  separatorBuilder: (context, index) => SizedBox(
                        height: 8,
                      ),
                  itemCount: 4),
            ),
          )
        ],
      ),
    );
  }
}

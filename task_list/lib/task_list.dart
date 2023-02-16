import 'package:flutter/cupertino.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:task_list/model/model.dart';
import 'package:task_list/style/my_style.dart';

class TaskList extends StatefulWidget {
  const TaskList({super.key});

  @override
  State<TaskList> createState() => _TaskListState();
}

class _TaskListState extends State<TaskList> {
  final list = Model_class.generatedList();
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(14, 0, 14, 0),
      height: 91,
      child: ListView.separated(
          physics: ClampingScrollPhysics(),
          primary: false,
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return Container(
              width: 139,
              padding: EdgeInsets.symmetric(horizontal: 7, vertical: 8),
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 255, 255, 255),
                borderRadius: BorderRadius.circular(12),
                boxShadow: [
                  // BoxShadow(
                  //   color: Color.fromARGB(255, 213, 213, 213),
                  //   spreadRadius: 2,
                  //   blurRadius: 3,
                  //   offset: Offset(0, 3), // changes position of shadow
                  // ),
                ],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset(list[index].img),
                  SizedBox(
                    height: 7,
                  ),
                  Text(
                    "${list[index].name}",
                    style: myStyle(12, Color(0xff042E2B), FontWeight.w500),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    "Save Data: 10/12/2022",
                    style: myStyle(10, Color(0xff042E2B).withOpacity(0.5),
                        FontWeight.w400),
                  ),
                ],
              ),
            );
          },
          separatorBuilder: (context, index) => SizedBox(
                width: 8,
              ),
          itemCount: list.length),
    );
  }
}

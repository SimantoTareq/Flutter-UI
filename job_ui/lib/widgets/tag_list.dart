import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TagList extends StatefulWidget {
  const TagList({super.key});

  @override
  State<TagList> createState() => _TagListState();
}

class _TagListState extends State<TagList> {
  final _tagList = <String>['All', '⚡Popular', '⭐Featured'];

  var selected = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(13),
      height: 40,
      child: ListView.separated(
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) => InkWell(
                onTap: () {
                  setState(() {
                    selected = index;
                  });
                },
                child: Container(
                  decoration: BoxDecoration(
                      color: selected == index
                          ? Color.fromARGB(255, 198, 224, 186).withOpacity(0.3)
                          : Colors.white,
                      borderRadius: BorderRadius.circular(25.0),
                      border: Border.all(
                          color: selected == index
                              ? Colors.green.withOpacity(0.3)
                              : Color.fromARGB(255, 164, 229, 159))),
                  padding: EdgeInsets.symmetric(vertical: 10, horizontal: 25),
                  child: Text(_tagList[index]),
                ),
              ),
          separatorBuilder: (_, index) => SizedBox(
                width: 10.0,
              ),
          itemCount: _tagList.length),
    );
  }
}

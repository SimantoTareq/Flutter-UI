import 'package:flutter/material.dart';
import 'package:job_ui/widgets/company_list.dart';
import 'package:job_ui/widgets/home_appBar.dart';
import 'package:job_ui/widgets/search.dart';

import 'package:job_ui/widgets/tag_list.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Row(
            children: [
              Expanded(flex: 2, child: Container()),
              Expanded(
                flex: 1,
                child: Container(
                  color: Colors.grey.withOpacity(0.1),
                ),
              ),
            ],
          ),
          Column(
            children: [
              HomeAppBar(),
              search(),
              TagList(),
              CompantList(),
            ],
          )
        ],
      ),
    );
  }
}

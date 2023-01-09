import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:job_ui/widgets/company_details.dart';
import 'package:job_ui/widgets/company_item.dart';

import '../model/company_info.dart';

class CompantList extends StatelessWidget {
  const CompantList({super.key});

  @override
  Widget build(BuildContext context) {
    final cInfo = CompanyInfo.generatedComapnyList();
    return Container(
        height: 160,
        child: ListView.separated(
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return GestureDetector(
                  onTap: () {
                    showModalBottomSheet(
                        backgroundColor: Colors.transparent,
                        isScrollControlled: true,
                        context: context,
                        builder: (context) => CompanyDetails(cInfo[index]));
                  },
                  child: CompanyItem(cInfo[index]));
            },
            separatorBuilder: (_, index) => SizedBox(
                  width: 8,
                ),
            itemCount: cInfo.length));
  }
}

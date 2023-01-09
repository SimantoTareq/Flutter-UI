import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:job_ui/model/company_info.dart';

class CompanyItem extends StatelessWidget {
  CompanyInfo companyInfo;
  CompanyItem(this.companyInfo);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 20),
      padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
      width: 280,
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(20.0)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Align(
                    alignment: Alignment.center,
                    child: Container(
                      padding: EdgeInsets.all(8),
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25.0),
                        color: Colors.grey.withOpacity(0.1),
                      ),
                      child: Image.asset(companyInfo.logoUrl),
                    ),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    companyInfo.company,
                    style: TextStyle(
                        color: Colors.black87,
                        fontSize: 20,
                        fontWeight: FontWeight.w600),
                  ),
                ],
              ),
              Icon(
                Icons.bookmark_outline_outlined,
                color: Colors.grey,
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            companyInfo.titile,
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            children: [
              Icon(
                Icons.location_on_outlined,
                color: Colors.yellow,
              ),
              SizedBox(
                width: 8,
              ),
              Text(
                companyInfo.location,
                style: TextStyle(color: Colors.grey[400]),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

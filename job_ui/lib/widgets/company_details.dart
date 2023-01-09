import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../model/company_info.dart';

class CompanyDetails extends StatelessWidget {
  CompanyInfo companyInfo;
  CompanyDetails(this.companyInfo);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      height: 600,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(25), topRight: Radius.circular(25))),
      child: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              color: Colors.grey[350],
              borderRadius: BorderRadius.circular(25),
            ),
            margin: EdgeInsets.only(top: 8.0),
            height: 5,
            width: 60,
          ),
          SizedBox(
            height: 36,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Container(
                    padding: EdgeInsets.all(8),
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25.0),
                      color: Colors.grey.withOpacity(0.1),
                    ),
                    child: Image.asset(companyInfo.logoUrl),
                  ),
                  SizedBox(
                    width: 14,
                  ),
                  Text(companyInfo.company,
                      style: TextStyle(
                          color: Colors.black87,
                          fontSize: 20,
                          fontWeight: FontWeight.w600)),
                ],
              ),
              Row(
                children: [
                  Icon(
                    Icons.bookmark_outline_outlined,
                    color: Colors.grey,
                  ),
                  Icon(Icons.more_horiz)
                ],
              )
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Align(
            alignment: Alignment.topLeft,
            child: Text(companyInfo.titile,
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 24)),
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Icon(
                    Icons.location_on_outlined,
                    color: Colors.yellow,
                  ),
                  Text(companyInfo.location,
                      style: TextStyle(color: Colors.grey[400])),
                ],
              ),
              Row(
                children: [
                  Icon(
                    Icons.watch_later_outlined,
                    color: Colors.yellow,
                  ),
                  Text('Full time', style: TextStyle(color: Colors.grey[400])),
                ],
              ),
            ],
          ),
          SizedBox(
            height: 26,
          ),
          Align(
            alignment: Alignment.topLeft,
            child: Text(
              'Requirment',
              style: TextStyle(fontWeight: FontWeight.w600),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          ...companyInfo.req
              .map((e) => Container(
                    child: Row(
                      children: [
                        Container(
                          margin: EdgeInsets.all(15.0),
                          height: 8,
                          width: 8,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle, color: Colors.black),
                        ),
                        SizedBox(
                          height: 40,
                        ),
                        Container(
                            padding: EdgeInsets.only(top: 10), child: Text(e))
                      ],
                    ),
                  ))
              .toList(),
          SizedBox(
            height: 20,
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 25),
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(30)),
            height: 50,
            width: double.infinity,
            child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xff01B2B8)),
                onPressed: () {},
                child: Text('Appy Now')),
          )
        ],
      ),
    );
  }
}

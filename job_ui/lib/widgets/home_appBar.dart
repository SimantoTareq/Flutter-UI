import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 40, left: 25, right: 25),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              Text(
                "Welcome Home",
                style: TextStyle(fontSize: 20),
              ),
              Text(
                "Annie Bryant",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              )
            ],
          ),
          Row(
            children: [
              Container(
                margin: EdgeInsets.only(top: 30, right: 20),
                transform: Matrix4.rotationZ(100),
                child: Stack(
                  children: [
                    Icon(
                      Icons.notifications_none_outlined,
                      size: 35,
                      color: Colors.grey,
                    ),
                    Positioned(
                        left: 25,
                        child: Container(
                          padding: EdgeInsets.all(4),
                          decoration: BoxDecoration(
                              shape: BoxShape.circle, color: Colors.red),
                        ))
                  ],
                ),
              ),
              SizedBox(
                width: 10,
              ),
              ClipOval(
                child: Image.asset(
                  'images/4.png',
                  width: 50,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}

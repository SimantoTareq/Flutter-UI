import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          Expanded(
              flex: 3,
              child: Container(
                padding: EdgeInsets.all(20),
                width: double.infinity,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: NetworkImage(
                            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRa6Me6grpv_Okp5nYAxrNzo6Sc6C0we13KkA&usqp=CAU"),
                        fit: BoxFit.cover)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CircleAvatar(
                      maxRadius: 25,
                      backgroundImage: NetworkImage(
                          "https://images.unsplash.com/photo-1633332755192-727a05c4013d?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8dXNlcnxlbnwwfHwwfHw%3D&w=1000&q=80"),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      "Tareq Hossain 65",
                      style: TextStyle(fontSize: 22, color: Colors.white),
                    ),
                    Row(
                      children: [
                        Text(
                          "265 followers",
                          style: TextStyle(fontSize: 14, color: Colors.white),
                        ),
                        Icon(
                          Icons.people,
                          color: Colors.white,
                        ),
                      ],
                    )
                  ],
                ),
              )),
          Expanded(
              flex: 7,
              child: Container(
                padding: EdgeInsets.all(20),
                child: Column(
                  children: [
                    DrawerItem(
                      icon: Icons.person,
                      title: "Profile",
                      onTap: () {},
                    ),
                    DrawerItem(
                      icon: Icons.person,
                      title: "Profile",
                      onTap: () {},
                    ),
                    DrawerItem(
                      icon: Icons.person,
                      title: "Profile",
                      onTap: () {},
                    ),
                    DrawerItem(
                      icon: Icons.person,
                      title: "Profile",
                      onTap: () {},
                    ),
                    Spacer(),
                    Divider(
                      color: Color.fromARGB(255, 9, 9, 9),
                      indent: 10,
                      endIndent: 10,
                      height: 50,
                      thickness: 0.5,
                    ),
                    DrawerItem(
                      icon: Icons.person,
                      title: "Profile",
                      onTap: () {},
                    ),
                    DrawerItem(
                      icon: Icons.person,
                      title: "Profile",
                      onTap: () {},
                    ),
                  ],
                ),
              )),
        ],
      ),
    );
  }
}

class DrawerItem extends StatelessWidget {
  DrawerItem({this.title, this.icon, this.onTap, this.clr});
  String? title;
  IconData? icon;
  VoidCallback? onTap;
  Color? clr;

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      //hoverColor: Colors.blue[500],
      color: clr,
      padding: EdgeInsets.only(bottom: 22, left: 0),
      onPressed: onTap,
      child: Row(
        children: [
          Icon(icon),
          SizedBox(
            width: 16,
          ),
          Text(
            "${title ?? "Enter Name"}",
            style: TextStyle(fontSize: 16, color: Colors.black),
          ),
        ],
      ),
    );
  }
}

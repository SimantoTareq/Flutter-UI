import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyDrawer extends StatefulWidget {
  const MyDrawer({super.key});

  @override
  State<MyDrawer> createState() => _MyDrawerState();
}

class _MyDrawerState extends State<MyDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: Column(
      children: [
        Stack(children: [
          Container(
            padding: EdgeInsets.all(20),
            width: double.infinity,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("images/drawerBc.png"),
                    fit: BoxFit.cover)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Icon(
                  Icons.close,
                  color: Color(0xfFFFFFFF),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "Demo Limited Company",
                  style: Style(18, Color(0xffFFFFFF), FontWeight.w600),
                  // style: TextStyle(fontSize: 22, color: Colors.white),
                ),
              ],
            ),
          ),
          Positioned(
            right: -180,
            top: -140,
            child: Container(
              width: 350,
              height: 300,
              decoration: BoxDecoration(
                  borderRadius: const BorderRadius.all(Radius.circular(150)),
                  gradient: LinearGradient(colors: [
                    Color(0xffC9ECE3).withOpacity(0.1),
                    Color(0xffC9ECE3).withOpacity(0.15),
                    Color(0xff10AB83).withOpacity(0.64)
                  ])),
            ),
          ),
          Positioned(
            right: -220,
            top: -140,
            child: Container(
              width: 300,
              height: 300,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(150)),
                  gradient: LinearGradient(colors: [
                    Color(0xffC9ECE3).withOpacity(0.15),
                    Color(0xff10AB83).withOpacity(0.15)
                  ])),
            ),
          )
        ]),
        Container(
          padding: EdgeInsets.symmetric(
            vertical: 5,
          ),
          child: Column(
            children: [
              ExpansionTile(
                iconColor: Color(0xff10AB83),
                backgroundColor: Color(0xff10AB83).withOpacity(0.4),

                //collapsedBackgroundColor: Color.fromARGB(255, 75, 204, 172),
                collapsedTextColor: Color.fromARGB(153, 48, 50, 48),
                textColor: Color(0xff10AB83),
                //iconColor: Colors.black,
                leading: Icon(Icons.shopping_cart),
                title: Text(
                  "Purchase",
                  style: GoogleFonts.poppins(
                      fontSize: 14, fontWeight: FontWeight.w500),
                ),
                children: [
                  IntrinsicHeight(
                    child: Container(
                      padding: EdgeInsets.all(16),
                      color: Colors.white,
                      child: Row(
                        children: [
                          VerticalDivider(
                            color: Color(0xffC9ECE3),
                            width: 10,
                            endIndent: 4,
                            indent: 4,
                            thickness: 1,
                          ),
                          SizedBox(
                            width: 30,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                padding: EdgeInsets.all(4),
                                child: Text(
                                  "Purchase List",
                                  style: Style(
                                      12, Color(0xff10AB83), FontWeight.w500),
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.all(4),
                                child: Text(
                                  "Order List",
                                  style: Style(
                                      12, Color(0xff10AB83), FontWeight.w500),
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.all(4),
                                child: Text(
                                  "VAT List",
                                  style: Style(
                                      12, Color(0xff10AB83), FontWeight.w500),
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.all(4),
                                child: Text(
                                  "Product List",
                                  style: Style(
                                      12, Color(0xff10AB83), FontWeight.w500),
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.all(4),
                                child: Text(
                                  "Product Report",
                                  style: Style(
                                      12, Color(0xff10AB83), FontWeight.w500),
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
              ExpansionTile(
                iconColor: Color(0xff10AB83),
                backgroundColor: Color(0xffC9ECE3),

                //collapsedBackgroundColor: Color.fromARGB(255, 75, 204, 172),
                collapsedTextColor: Color.fromARGB(153, 48, 50, 48),
                textColor: Color.fromARGB(255, 21, 216, 168),
                leading: Icon(Icons.shopping_bag_rounded),
                title: Text("Sell"),
                children: [],
              ),
              ExpansionTile(
                iconColor: Color(0xff10AB83),
                backgroundColor: Color(0xffC9ECE3),

                //collapsedBackgroundColor: Color.fromARGB(255, 75, 204, 172),
                collapsedTextColor: Color.fromARGB(153, 48, 50, 48),
                textColor: Color.fromARGB(255, 21, 216, 168),

                leading: Image.asset('images/Group 63.png'),
                title: Text("Stock/Inventory"),
              ),
            ],
          ),
        ),
      ],
    ));
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

Style(double? size, Color clr, [FontWeight? fw]) {
  return GoogleFonts.poppins(color: clr, fontSize: size, fontWeight: fw);
}

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/src/widgets/framework.dart';

class HomePage extends StatefulWidget {
  //  const HomePage({super.key});

  List contactList = [
    {'name': 'Tareq', 'phone': '01628217106'},
    {'name': 'Simanto', 'phone': '01683217347'},
    {'name': 'Hossain', 'phone': '01672752965'},
    {'name': 'MD', 'phone': '01831071054'},
    {'name': 'Jahid', 'phone': '01728517559'},
    {'name': 'Tareq', 'phone': '01628217106'},
    {'name': 'Tareq', 'phone': '01628217106'},
    {'name': 'Tareq', 'phone': '01628217106'},
    {'name': 'Tareq', 'phone': '01628217106'},
    {'name': 'Tareq', 'phone': '01628217106'},
    {'name': 'Tareq', 'phone': '01628217106'},
    {'name': 'Tareq', 'phone': '01628217106'},
    {'name': 'Tareq', 'phone': '01628217106'},
    {'name': 'Tareq', 'phone': '01628217106'},
    {'name': 'Tareq', 'phone': '01628217106'},
    {'name': 'Tareq', 'phone': '01628217106'},
    {'name': 'Tareq', 'phone': '01628217106'},
  ];

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            actions: [Icon(Icons.access_time_filled)],
            pinned: true,
            centerTitle: true,
            expandedHeight: MediaQuery.of(context).size.height / 7,
            title: Text("Day-10"),
            flexibleSpace: FlexibleSpaceBar(
              background: Image.network(
                "https://thumbs.dreamstime.com/b/wispy-clouds-horizontal-sky-panorama-high-altitude-wind-swept-blue-147437736.jpg",
                fit: BoxFit.cover,
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    "Registration  List",
                    style: myStyle(38, Color.fromARGB(179, 0, 0, 0)),
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  Card(
                    child: ListTile(
                      title: Text('Tareq'),
                      trailing: Text('01628217106'),
                    ),
                  ),
                  Card(
                    child: ListTile(
                      title: Text('Hossain'),
                      trailing: Text('o1628217106'),
                    ),
                  ),
                  Card(
                    child: ListTile(
                      title: Text('Tareq'),
                      trailing: Text('o1628217106'),
                    ),
                  ),
                  Card(
                    child: ListTile(
                      title: Text('Tareq'),
                      trailing: Text('o1628217106'),
                    ),
                  ),
                  Card(
                    child: ListTile(
                      title: Text('Hossain'),
                      trailing: Text('o1628217106'),
                    ),
                  ),
                  Card(
                    child: ListTile(
                      title: Text('Tareq'),
                      trailing: Text('o1628217106'),
                    ),
                  ),
                  Card(
                    child: ListTile(
                      title: Text('Tareq'),
                      trailing: Text('o1628217106'),
                    ),
                  ),
                  Card(
                    child: ListTile(
                      title: Text('Hossain'),
                      trailing: Text('o1628217106'),
                    ),
                  ),
                  Card(
                    child: ListTile(
                      title: Text('Tareq'),
                      trailing: Text('o1628217106'),
                    ),
                  ),
                  Card(
                    child: ListTile(
                      title: Text('Tareq'),
                      trailing: Text('o1628217106'),
                    ),
                  ),
                  Card(
                    child: ListTile(
                      title: Text('Hossain'),
                      trailing: Text('o1628217106'),
                    ),
                  ),
                  Card(
                    child: ListTile(
                      title: Text('Tareq'),
                      trailing: Text('o1628217106'),
                    ),
                  ),
                  Card(
                    child: ListTile(
                      title: Text('Tareq'),
                      trailing: Text('o1628217106'),
                    ),
                  ),
                  Card(
                    child: ListTile(
                      title: Text('Hossain'),
                      trailing: Text('o1628217106'),
                    ),
                  ),
                  Card(
                    child: ListTile(
                      title: Text('Tareq'),
                      trailing: Text('o1628217106'),
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

myStyle(double sizeFont, Color colorFont, [FontWeight? weightFont]) {
  return GoogleFonts.roboto(
    fontSize: sizeFont,
    color: colorFont,
    fontWeight: weightFont,
  );
}

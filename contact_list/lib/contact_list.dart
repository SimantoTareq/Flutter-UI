import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class ContactList extends StatelessWidget {
  //const ContactNumber({super.key});

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
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Contact Number'),
      ),
      body: ListView.builder(
          itemCount: contactList.length,
          itemBuilder: (context, index) {
            return Column(
              children: [
                ListTile(
                  title: Text(contactList[index]['name']),
                  leading:
                      CircleAvatar(child: Text(contactList[index]['name'][0])),
                  subtitle: Text(contactList[index]['phone']),
                )
              ],
            );
          }),
    );
  }
}

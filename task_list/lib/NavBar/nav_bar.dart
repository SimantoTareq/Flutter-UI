import 'package:flutter/material.dart';
import 'package:task_list/home_page.dart';
import 'package:task_list/screen/record.dart';
import 'package:task_list/screen/saved.dart';
import 'package:task_list/screen/search.dart';
import 'package:task_list/screen/setting.dart';

class BottomTab extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _BottomTab();
  }
}

class _BottomTab extends State<BottomTab> {
  int _selectedTabIndex = 0;

  List _pages = [
    HomePage(),
    searchPage(),
    recordPage(),
    savedPage(),
    settingPage()
  ];

  _changeIndex(int index) {
    setState(() {
      _selectedTabIndex = index;
      print("index..." + index.toString());
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: _pages[_selectedTabIndex]),
      bottomNavigationBar: bottomNavigationBar,
    );
  }

  Widget get bottomNavigationBar {
    return Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
              topRight: Radius.circular(30), topLeft: Radius.circular(30)),
          boxShadow: [
            BoxShadow(color: Colors.black38, spreadRadius: 0, blurRadius: 10),
          ],
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30.0),
            topRight: Radius.circular(30.0),
          ),
          child: BottomNavigationBar(
            currentIndex: _selectedTabIndex,
            onTap: _changeIndex,
            type: BottomNavigationBarType.fixed,
            selectedFontSize: 12,
            unselectedFontSize: 12,
            selectedItemColor: Color(0xff1B6056),
            unselectedItemColor: Colors.grey[500],
            showUnselectedLabels: true,
            items: <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: Icon(Icons.home_filled),
                label: ('Home'),
              ),
              BottomNavigationBarItem(
                icon: new Icon(Icons.search),
                label: ('Search'),
              ),
              BottomNavigationBarItem(
                icon: new Icon(Icons.emergency_recording_rounded),
                label: ('Record'),
              ),
              BottomNavigationBarItem(
                  icon: Icon(Icons.bookmark_outlined), label: ('Saved')),
              BottomNavigationBarItem(
                  icon: Icon(Icons.settings), label: ('Setting')),
            ],
          ),
        ));
  }
}

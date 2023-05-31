import 'package:flutter/material.dart';

class search extends StatefulWidget {
  const search({super.key});

  @override
  State<search> createState() => _searchState();
}

class _searchState extends State<search> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 40, horizontal: 25),
      margin: EdgeInsets.all(10),
      height: 280,
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        image: DecorationImage(
            image: AssetImage('images/6.png'), fit: BoxFit.cover),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'First Search',
            style: TextStyle(fontSize: 24, color: Colors.white),
          ),
          Text(
            'You can search quickly for\n the you want',
            style: TextStyle(fontSize: 18, height: 1.5, color: Colors.white),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            height: 50,
            padding: EdgeInsets.all(15.0),
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(30)),
            child: Row(
              children: [
                Image.asset('images/3.png'),
                SizedBox(
                  width: 10,
                ),
                Text('Search'),
              ],
            ),
          )
        ],
      ),
    );
  }
}

import 'package:flutter/cupertino.dart';

class User {
  num id;
  String firstName;
  String lastName;
  String iconUrl;
  Color bgColor;

  User(this.id, this.firstName, this.lastName, this.iconUrl, this.bgColor);

  static List<User> generatedUser() {
    return [
      User(0, "Michael ", "Scott", "images/14.jfif",
          Color.fromARGB(255, 66, 69, 100)),
      User(1, "Pam ", "Beesly", "images/15.jfif",
          Color.fromARGB(255, 43, 44, 51)),
      User(2, "Jim ", "Halpert", "images/16.jfif", Color(0xFF5B60BA)),
      User(3, "Andy ", "Bernard", "images/17.jfif", Color(0xFFEDEEF7)),
      User(4, "Dwight ", "Schrute", "images/18.jfif", Color(0xFF000036)),
      User(5, "Stanley ", "Hudson", "images/19.jfif", Color(0xFFEDEEF7)),
      User(5, "Kevin ", "Malone", "images/20.jfif", Color(0xFFB4B7BF)),
    ];
  }
}

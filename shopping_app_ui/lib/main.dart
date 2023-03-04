import 'package:flutter/material.dart';
import 'package:shopping_app_ui/home_page.dart';
import 'package:sizer/sizer.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Sizer(
      builder: (context, orientation, deviceType) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          //title: 'Sizer',
          //theme: ThemeData.light(),
          home: HomePage(),
        );
      },
    );
  }
}

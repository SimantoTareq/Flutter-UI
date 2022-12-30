import 'package:background_chnage_provider/home_page.dart';
import 'package:background_chnage_provider/theme_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  ThemeProvider themeProvider = ThemeProvider();

  getCurrentTheme() async {
    themeProvider.setThemeData = await themeProvider.getTheme();
    //print("current theme is $x");
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getCurrentTheme();
  }

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
        providers: [
          ChangeNotifierProvider(create: (context) => ThemeProvider()),
        ],
        child: Consumer(builder: (context, themeData, cha) {
          bool isDark = Provider.of<ThemeProvider>(context).getTheheData;
          return MaterialApp(
              title: 'Flutter Demo',
              theme: ThemeData(
                  iconTheme: IconThemeData(
                      size: 50, color: isDark ? Colors.amber : Colors.black54),
                  scaffoldBackgroundColor: isDark ? Colors.red : Colors.blue,
                  primarySwatch: Colors.blue,
                  primaryColor: isDark ? Colors.black : Colors.orange,
                  appBarTheme: AppBarTheme(
                    color: isDark
                        ? Color.fromARGB(255, 78, 75, 75)
                        : Color.fromARGB(255, 104, 58, 55),
                  )),
              home: HomePage());
        }));
  }
}

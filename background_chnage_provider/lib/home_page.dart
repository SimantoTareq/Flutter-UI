import 'package:background_chnage_provider/theme_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    var isDark = Provider.of<ThemeProvider>(context).getTheheData;
    return Scaffold(
      appBar: AppBar(
        title: Text("Provider"),
      ),
      body: Center(
        child: Column(
          children: [
            Text(
              "Theme Change",
              style: TextStyle(color: Theme.of(context).primaryColor),
              //Theme.of(context).textTheme.headline1
            ),
            Icon(Icons.menu),
            SwitchListTile(
              value: isDark,
              onChanged: (bool value) {
                Provider.of<ThemeProvider>(context, listen: false)
                    .setThemeData = value;
                print("$isDark");
              },
            )
          ],
        ),
      ),
    );
  }
}

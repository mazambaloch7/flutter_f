
import 'package:flutter/material.dart';
import 'package:flutter_f/darktheme/ThemeChangeProvider.dart';
import 'package:provider/provider.dart';


class DarkTheme extends StatefulWidget {
  const DarkTheme({Key? key}) : super(key: key);

  @override
  State<DarkTheme> createState() => _DarkThemeState();
}

class _DarkThemeState extends State<DarkTheme> {
  @override
  Widget build(BuildContext context) {

    final themeChanger = Provider.of<ThemeChnageProvider>(context);

    return Scaffold(
      appBar: AppBar(
        title: Text("Dart"),
        centerTitle:  true,
      ) ,
      
      body: Column(
        children: [
          RadioListTile<ThemeMode>(
              title: Text("Theme Model"),
              value: ThemeMode.light,
            groupValue: themeChanger.themeMode,
            onChanged: themeChanger.setTheme),
          RadioListTile<ThemeMode>(
              title: Text("Theme dark"),
              value: ThemeMode.dark,
            groupValue: themeChanger.themeMode,
            onChanged: themeChanger.setTheme),

          RadioListTile<ThemeMode>(
              title: Text("System mode "),
              value: ThemeMode.system,
            groupValue: themeChanger.themeMode,
            onChanged: themeChanger.setTheme),


          Icon(Icons.confirmation_number_sharp),
        ],
      ),

    );
  }
}

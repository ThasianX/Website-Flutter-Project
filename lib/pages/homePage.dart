import 'package:flutter/material.dart';
import '../widgets/themeSwitcherWidget.dart';
import '../config/assets.dart';
import '../components/aboutMe.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: <Widget>[
          IconButton(
            icon: ThemeSwitcher.of(context).isDarkModeOn ? Icon(Icons.wb_sunny) : Image.asset(Assets.moon, height: 20, width: 20),
            onPressed: ()=> ThemeSwitcher.of(context).switchDarkMode(),
          )
        ],
      ),
      body: Center(child: AboutMe())
      );
  }
}
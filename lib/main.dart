import 'package:adityagurjar/pages/homePage.dart';
import 'package:adityagurjar/widgets/themeSwitcherWidget.dart';
import 'package:flutter/material.dart';
import 'config/themes.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ThemeSwitcherWidget(
      initialDarkModeOn: true,
      child: MyWebsite(),
    );
  }
}
class MyWebsite extends StatelessWidget {
  const MyWebsite({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Kevin Li',
      theme: ThemeSwitcher.of(context).isDarkModeOn ? darkTheme(context) : lightTheme(context),
      home: HomePage(),
    );
  }
}

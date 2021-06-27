import 'package:flutter/material.dart';

import 'Screens/home_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Animated Loading Indicators',
      darkTheme: ThemeData.dark().copyWith(scaffoldBackgroundColor: Colors.black),
      themeMode: ThemeMode.dark,
      home: HomePage(),
    );
  }
}

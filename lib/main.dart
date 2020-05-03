import 'package:flutter/material.dart';

import 'home/home_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
          brightness: Brightness.dark,
          scaffoldBackgroundColor: Colors.black,
          textTheme: TextTheme(
            display1: TextStyle(fontSize: 15),
            display2: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
            display3: TextStyle(
              fontSize: 17,
              color: Colors.black.withOpacity(0.6),
            ),
            title: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          )),
      home: HomePage(),
    );
  }
}

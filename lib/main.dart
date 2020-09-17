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
            headline4: TextStyle(fontSize: 15),
            headline3: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
            headline2: TextStyle(
              fontSize: 15,
              color: Colors.white.withOpacity(0.4),
            ),
            headline6: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          )),
      home: HomePage(),
    );
  }
}

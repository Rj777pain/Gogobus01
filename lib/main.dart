import 'package:flutter/material.dart';
import 'package:gogobus10/screens/main_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Go Go Bus 1.0",
      home: mainPage(),
        theme: ThemeData(
          brightness: Brightness.dark,
          primaryColor: Colors.blue,
          accentColor: Colors.blueAccent,
        ),
    );    
  }
}

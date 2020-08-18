import 'package:flutter/material.dart';
import 'package:gogobus10/screens/main_page.dart';
import 'package:gogobus10/screens/sec_page.dart';
import 'package:gogobus10/screens/bus_list.dart';
import 'package:gogobus10/screens/bus_detail.dart';

void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: "Go Go Bus 1.0",
    home: mainPage(),
    theme: ThemeData(
      brightness: Brightness.dark,
      primaryColor: Colors.blue,
      accentColor: Colors.blueAccent,
    ),
  ));
}



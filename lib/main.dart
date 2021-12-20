import 'package:flutter/material.dart';
import 'demohome.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
      ),
      // home: MyHomePage(title: 'Flutter Demo Home Page'),
      home: LucaDemoHome(),
    );
  }
}


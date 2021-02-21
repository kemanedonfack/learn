import 'package:learn/pages/Login.dart';
import 'package:learn/pages/home2.dart';
import 'package:flutter/material.dart';
import 'package:learn/utile/couleur.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final color =  Color(0xff2F5681);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Elearning',
      theme: ThemeData(

        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Login(),
      debugShowCheckedModeBanner: false,
    );
  }
}


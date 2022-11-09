import 'package:flutter/material.dart';
import 'package:untitled/MainPage.dart';
import 'package:untitled/details_page.dart';
import 'strings.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MainPage(),
    );
  }
}

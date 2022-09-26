import 'package:flutter/material.dart';
import 'package:problem/HomePage.dart';

void main() {
  runApp(MaterialApp(
    home: MyApp(),
    theme: ThemeData.dark(),
    debugShowCheckedModeBanner: false,
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Home();
  }
}

import 'package:flutter/material.dart';
import 'package:problem/Component/MyWidget.dart';

bool val4 = false;

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  bool val = false;
  bool myVal = false;
  bool myVal2 = false;
  bool myVal3 = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          MyWidget(
            OnTap: (value) {
              setState(() {
                myVal3 = !myVal3;
              });
            },
            value: myVal3,
          ),
          MyWidget(
              OnTap: (value) {
                setState(() {
                  myVal2 = !myVal2;
                });
              },
              value: myVal2)
        ],
      ),
    );
  }
}

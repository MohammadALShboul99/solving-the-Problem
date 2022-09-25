import 'package:flutter/material.dart';
import 'package:problem/HomePage.dart';

class MyWidget extends StatefulWidget {
  MyWidget({required this.OnTap, required this.value});

  bool value = false;

  void Function(bool)? OnTap;
  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  @override
  Widget build(BuildContext context) {
    bool? myVal;
    return SwitchListTile(
      onChanged: widget.OnTap,
      value: widget.value,
    );
  }
}

import 'package:flutter/material.dart';
import 'package:problem/HomePage.dart';

class MyWidget extends StatefulWidget {
  MyWidget(
      {required this.OnTap,
      required this.value,
      required this.myTextTitle,
      required this.myTextSub});

  bool value = false;
  String? myTextTitle;
  String? myTextSub;

  void Function(bool)? OnTap;
  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  @override
  Widget build(BuildContext context) {
    bool? myVal;
    return SwitchListTile(
      title: Text("${widget.myTextTitle}"),
      subtitle: Text("${widget.myTextSub}"),
      onChanged: widget.OnTap,
      value: widget.value,
    );
  }
}

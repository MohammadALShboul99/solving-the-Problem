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
  List<Color> myColor = [Colors.white, Colors.purpleAccent];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(0, 226, 119, 245),
      ),
      body: Container(
        decoration: BoxDecoration(gradient: LinearGradient(colors: myColor)),
        child: Column(
          children: [
            MyWidget(
              OnTap: (value) {
                setState(() {
                  myVal3 = !myVal3;
                  if (myVal3 == true) {
                    myColor = [Colors.pink, Colors.black];
                  } else {
                    myColor = [Colors.white, Colors.purpleAccent];
                  }
                });
              },
              value: myVal3,
              myTextTitle: "Dark Mood",
              myTextSub: "Dark Mood is wonderful",
            ),
            MyWidget(
              OnTap: (value) {
                setState(() {
                  myVal2 = !myVal2;
                  if (myVal2 == true) {
                    showDialog(
                      context: context,
                      builder: (context) {
                        return AlertDialog(
                          content: Container(
                            child: Column(
                              children: [Text("This is The Information .")],
                            ),
                          ),
                        );
                      },
                    );
                  }
                });
              },
              value: myVal2,
              myTextTitle: "Contact Us",
              myTextSub: "Eg: PhoneNumber , Facebook , Our Location",
            ),
          ],
        ),
      ),
    );
  }
}

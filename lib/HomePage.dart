import 'package:flutter/material.dart';
import 'package:problem/Component/ContactWig.dart';
import 'package:problem/Component/MyWidget.dart';
import 'package:ionicons/ionicons.dart';
import 'package:url_launcher/url_launcher.dart';

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
  List<Color> myColors = [Colors.white70, Colors.purpleAccent];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Home Page",
          style: TextStyle(fontSize: 30, color: Colors.cyan),
        ),
        backgroundColor: Color.fromARGB(0, 226, 119, 245),
      ),
      body: Container(
        decoration: BoxDecoration(gradient: LinearGradient(colors: myColors)),
        child: Column(
          children: [
            MyWidget(
              OnTap: (value) {
                setState(() {
                  myVal3 = !myVal3;
                  if (myVal3 == true) {
                    myColors = [Colors.pink, Colors.black];
                  } else {
                    myColors = [Colors.white70, Colors.purpleAccent];
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
                          actions: [
                            MaterialButton(
                              child: Text(
                                "Close",
                                style: TextStyle(
                                    fontSize: 30,
                                    color: Colors.indigo.shade300),
                              ),
                              onPressed: () {
                                setState(() {
                                  Navigator.pop(context,
                                      MaterialPageRoute(builder: ((context) {
                                    return Home();
                                  })));
                                });
                              },
                            )
                          ],
                          backgroundColor: Colors.indigo.shade200,
                          content: Column(
                            children: [
                              Text(
                                "Contact Us.",
                                style: TextStyle(fontSize: 35),
                              ),
                              SizedBox(
                                height: 40,
                              ),
                              Contact_widget(
                                title: "Facebook",
                                subTitle: "Our account",
                                url: "https://web.facebook.com/",
                                col: Colors.indigoAccent,
                                icon: Icon(Icons.facebook),
                              ),
                              Contact_widget(
                                title: "Instagram",
                                subTitle: "Follow us",
                                url:
                                    "https://www.instagram.com/accounts/login/",
                                col: Colors.pink,
                                icon: Icon(Ionicons.logo_instagram),
                              ),
                            ],
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

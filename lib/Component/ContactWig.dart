import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

late Uri _url;

class Contact_widget extends StatelessWidget {
  Contact_widget({this.title, this.subTitle, this.icon, this.url, this.col});
  String? title;
  String? subTitle;
  Icon? icon;
  String? url;
  Color? col;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        _url = Uri.parse('$url');
        Open();
      },
      child: Container(
        color: col,
        child: ListTile(
          title: Text("$title"),
          subtitle: Text("$subTitle"),
          leading: icon,
        ),
      ),
    );
  }
}

Future<void> Open() async {
  if (!await launchUrl(_url)) {
    throw 'Could not launch $_url';
  }
}

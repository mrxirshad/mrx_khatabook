import 'package:flutter/cupertino.dart';

class Settings {
  final String text;
  final String text1;
  final String route;
  final IconData icons;

   Settings({
 required this.text,
 required this.route,
  required this.icons,
    required this.text1,


  });
}
final List<Settings> Setting =[
  Settings(
      text: "Name",
      text1: "9334071281",
      route: "/",
      icons: CupertinoIcons.person,
  ),

];
import 'package:flutter/material.dart';
import 'package:flutter/material.dart';

String uri = 'http://192.168.68.132:3000';

class GlobalVariables {
  static const appBarGradient = LinearGradient(
    colors: [
      Color.fromARGB(255, 29, 201, 192),
      Color.fromARGB(255, 125, 221, 216),
    ],
    stops: [0.5, 1.0],
  );

  static const secondaryColor = Color.fromRGBO(255, 153, 0, 1);
  static const backgroundColor = Colors.white;
  static const Color greyBackgroundColor = Colors.white;

  static var selectedNavBarColor = Colors.cyan;
}

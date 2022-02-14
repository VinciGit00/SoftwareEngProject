import 'package:flutter/material.dart';

final ThemeData dark = new ThemeData(
  //brightness: Brightness.dark,

  primarySwatch: Colors.cyan,
  primaryColor: Colors.purple[800],

  canvasColor: Colors.grey[850],
  //backgroundColor: Colors.pink,
  textTheme: const TextTheme(bodyText2: TextStyle(color: Colors.white)),
);

final ThemeData white = new ThemeData(
  //brightness: Brightness.dark,

  primarySwatch: Colors.blue,
  primaryColor: Colors.purple[800],

  canvasColor: Colors.white,
  backgroundColor: Colors.yellow,
  textTheme: const TextTheme(bodyText2: TextStyle(color: Colors.black)),
);

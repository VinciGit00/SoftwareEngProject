import 'package:flutter/material.dart';
import 'package:truccoparrucco/pages/LoginScreen.dart';
import 'package:truccoparrucco/pages/calendar_screen.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    //home: LoginScreen(),
    home: CalendarScreen(),
  ));
}

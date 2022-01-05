import 'package:flutter/material.dart';
import 'package:testyy/View/CustomForm.dart';
import 'Model/Model.dart';
import 'View/MyHomePage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);
  final Model model = Model();

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: //const MyHomePage(title: 'Flutter Demo Home Page'),
            ListView(
          padding: const EdgeInsets.all(8),
          children: <Widget>[
            Container(
              height: 50,
              color: Colors.amber[600],
              child: CustomForm(),
            ),
            Container(
              height: 50,
              color: Colors.amber[500],
              child: CustomForm(),
            ),
            Container(
              height: 50,
              color: Colors.amber[100],
              child: CustomForm(),
            ),
          ],
        ));
  }
}

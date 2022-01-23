import 'package:flutter/material.dart';

class SomethingWentWrong extends StatefulWidget {
  SomethingWentWrong({Key? key}) : super(key: key);

  @override
  _SomethingWentWrongState createState() => _SomethingWentWrongState();
}

class _SomethingWentWrongState extends State<SomethingWentWrong> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Text("Errore nella fase di caricamento"),
    );
  }
}

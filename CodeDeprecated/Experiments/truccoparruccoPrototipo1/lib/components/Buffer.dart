import 'package:flutter/material.dart';
import 'Chosen.dart';
import 'Wrong.dart';
import 'Temp.dart';

class Buffer extends StatefulWidget {
  Buffer({Key? key}) : super(key: key);

  @override
  _BufferState createState() => _BufferState();
}

class _BufferState extends State<Buffer> {
  final Future<String> _calculation = Future<String>.delayed(
    const Duration(seconds: 1),
    () => 'Data Loaded',
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF6F7FF),
      body: FutureBuilder(
          future: _calculation,
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              if (snapshot.hasError) {
                return SomethingWentWrong();
              }
              return temp();
            } else {
              return Container(
                  alignment: Alignment.center,
                  child: CircularProgressIndicator(
                    strokeWidth: 6.0,
                  ));
            }
          }),
    );
  }
}
import 'package:flutter/material.dart';
import 'Wrong.dart';
import 'Conferma2.dart';

class BufferModifiche extends StatefulWidget {
  BufferModifiche({Key? key}) : super(key: key);

  @override
  _BufferModificheState createState() => _BufferModificheState();
}

class _BufferModificheState extends State<BufferModifiche> {
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
              return Conferma2();
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

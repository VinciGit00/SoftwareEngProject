import 'package:flutter/material.dart';

class Chosen extends StatefulWidget {
  Chosen({Key? key}) : super(key: key);

  @override
  _ChosenState createState() => _ChosenState();
}

class _ChosenState extends State<Chosen> {
  void onPressed() {
    print("Pressed");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
          //mainAxisAlignment: MainAxisAlignment.center,

          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              alignment: Alignment.center,
              child: Text(
                "Scegli un'azione",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20.0,
                  fontWeight: FontWeight.w300,
                ),
              ),
            ),
            RaisedButton(
              padding: EdgeInsets.symmetric(vertical: 8, horizontal: 25),
              child: Text(
                "Cliente",
                style: TextStyle(color: Colors.white),
              ),
              color: Colors.blue,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(30.0))),
              elevation: 4.0,
              onPressed: onPressed,
            ),
            RaisedButton(
              padding: EdgeInsets.symmetric(vertical: 8, horizontal: 25),
              child: Text(
                "Parrucchiere",
                style: TextStyle(color: Colors.white),
              ),
              color: Colors.blue,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(30.0))),
              elevation: 4.0,
              onPressed: onPressed,
            )
          ]),
    );
  }
}

import 'package:flutter/material.dart';

class Profilo extends StatefulWidget {
  Profilo({Key? key}) : super(key: key);

  @override
  _ProfiloState createState() => _ProfiloState();
}

class _ProfiloState extends State<Profilo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 4.0,
        backgroundColor: Color(0xFFF6F7FF),
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios,
            color: Colors.blue,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Column(children: [
        Container(
          alignment: Alignment.center,
          padding: EdgeInsets.symmetric(vertical: 8, horizontal: 25),
          child: Text(
            "Profilo parrucchiere",
            style: TextStyle(
              color: Colors.black,
              fontSize: 25.0,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
        Container(
          alignment: Alignment.topLeft,
          padding: EdgeInsets.all(12),
          child: Text("Nome:",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 20.0,
                  fontWeight: FontWeight.w600)),
        ),
        Container(
          alignment: Alignment.topLeft,
          padding: EdgeInsets.all(12),
          child: Text("Indirizzo:",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 20.0,
                  fontWeight: FontWeight.w600)),
        ),
      ]),
    );
  }
}

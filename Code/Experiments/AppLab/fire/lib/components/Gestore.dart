import 'package:flutter/material.dart';
import 'package:fire/components/Profilo.dart';

class PagGestore extends StatefulWidget {
  PagGestore({Key? key}) : super(key: key);

  @override
  _PagGestoreState createState() => _PagGestoreState();
}

class _PagGestoreState extends State<PagGestore> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF6F7FF),
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
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //Let's start by adding the text
            Text(
              "Prenotazioni effettuate",
              style: TextStyle(
                color: Colors.black,
                fontSize: 20.0,
                fontWeight: FontWeight.w600,
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        unselectedItemColor: Color(0xFFB7B7B7),
        selectedItemColor: Colors.blue,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.bookmark),
            label: "Prenotazioni",
          ),
          BottomNavigationBarItem(
            icon: IconButton(
              icon: Icon(IconData(0xf01f3, fontFamily: 'MaterialIcons')),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute<void>(builder: (context) => Profilo()));
              },
            ),
            label: "Profilo",
          ),
        ],
      ),
    );
  }
}

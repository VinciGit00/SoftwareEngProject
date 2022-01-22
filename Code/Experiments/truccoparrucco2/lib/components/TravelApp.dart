import 'package:flutter/material.dart';
import 'package:truccoparrucco/components/travelcard.dart';
import 'package:truccoparrucco/components/PrenotazioniCliente.dart';
import 'Settings.dart';

class TravelApp extends StatefulWidget {
  const TravelApp({Key? key}) : super(key: key);

  @override
  _TravelAppState createState() => _TravelAppState();
}

class _TravelAppState extends State<TravelApp> {
  List<String> img = [
    //1
    "a.jpeg",
    //2
    "b.jpeg",
    //3
    "c.jpeg",
  ];
  bool state = true;
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
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.settings,
              color: Colors.blue,
            ),
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute<void>(builder: (context) => Settings()));
            },
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //Let's start by adding the text
            Text(
              "Welcome in TruccoParrucco",
              style: TextStyle(
                color: Colors.black,
                fontSize: 26.0,
                fontWeight: FontWeight.w600,
              ),
            ),
            Text(
              "Scegli il parrucchiere dove tagliare i capelli",
              style: TextStyle(
                color: Colors.black,
                fontSize: 20.0,
                fontWeight: FontWeight.w300,
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            Switch(
              value: state,
              onChanged: (bool s) {
                setState(() {
                  state = s;
                });
              },
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        unselectedItemColor: Color(0xFFB7B7B7),
        selectedItemColor: Colors.blue,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Parrucchiere",
          ),
          BottomNavigationBarItem(
            icon: IconButton(
              icon: Icon(Icons.bookmark),
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute<void>(
                        builder: (context) => PrenotazioneCliente()));
              },
            ),
            label: "Prenotazioni",
          ),
        ],
      ),
    );
  }
}

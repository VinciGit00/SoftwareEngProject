import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:hair2/Model/Entity/stylist2.dart';
import 'package:hair2/components/travelcard.dart';
import 'package:hair2/components/PrenotazioniCliente.dart';
import 'package:provider/provider.dart';
import 'package:provider/src/provider.dart';
import '../authentication_service.dart';
import 'Settings.dart';
import 'Gestore.dart';

class InterfacciaPrincipale extends StatefulWidget {
  const InterfacciaPrincipale({Key? key}) : super(key: key);

  @override
  _InterfacciaPrincipaleState createState() => _InterfacciaPrincipaleState();
}

class _InterfacciaPrincipaleState extends State<InterfacciaPrincipale> {
  List<String> img = [
    //1
    "a.jpeg",
    //2
    "b.jpeg",
    //3
    "c.jpeg",
  ];
  bool state = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF6F7FF),
      appBar: AppBar(
        elevation: 4.0,
        backgroundColor: Color(0xFFF6F7FF),
        leading: Container(),
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
            ElevatedButton(
              onPressed: () {
                context.read<AuthenticationService>().signOut();
              },
              child: const Text("Sign out"),
            ),
            state == false
                ? Text(
                    "Scegli il parrucchiere dove tagliare i capelli",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20.0,
                      fontWeight: FontWeight.w300,
                    ),
                  )
                : Text(
                    "Ciao",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20.0,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
            SizedBox(
              height: 6.5,
            ),
            Container(
              padding: EdgeInsets.only(bottom: 12),
              child: Row(
                children: [
                  Text(
                    "Modalità:",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 0, horizontal: 6),
                    child: Text(
                      "Cliente",
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                  Switch(
                    value: state,
                    onChanged: (bool s) {
                      setState(() {
                        state = s;
                      });
                    },
                    /*activeColor: Colors.blue,
                    activeTrackColor: Colors.blue,*/
                    inactiveThumbColor: Colors.green,
                  ),
                  Text(
                    "Parruchhiere",
                    style: TextStyle(fontSize: 20),
                  ),
                ],
              ),
            ),
            Consumer<HairStylists>(builder: (context, stylists, child) {
              return Expanded(
                  child: ListView(
                children: [
                  for (var stylist in stylists.stylists)
                    ListTile(
                      title: Text(
                          stylist.id != null ? stylist.id.toString() : "null"),
                      subtitle: Text(stylist.email != null
                          ? stylist.email.toString()
                          : "null"),
                    ),
                ],
              ));
            }),
/** 
            state == true
                ? Expanded(
                    child: ListView(
                      scrollDirection: Axis.vertical,
                      children: [
                        TravelCard(
                            img: img[0],
                            HotelName: "Cristina e Thomas parrucchieri",
                            location: "Bormio",
                            rating: 5),
                        TravelCard(
                            img: img[1],
                            HotelName: "Total Look N.&N",
                            location: "Bormio",
                            rating: 4),
                        TravelCard(
                            img: img[2],
                            HotelName: "Da Vincis",
                            location: "Bormio",
                            rating: 4),
                      ],
                    ),
                  )
                : Expanded(
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        TravelCard(
                            img: img[0],
                            HotelName: "Franco e ciccio",
                            location: "Bormio",
                            rating: 5),
                        TravelCard(
                            img: img[1],
                            HotelName: "Franco e nando",
                            location: "Bormio",
                            rating: 4),
                        TravelCard(
                            img: img[2],
                            HotelName: "Giuseppe e Maria",
                            location: "Bormio",
                            rating: 4),
                      ],
                    ),
                  ),*/
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        unselectedItemColor: Color(0xFFB7B7B7),
        selectedItemColor: Colors.blue,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: IconButton(
              icon: Icon(Icons.bookmark),
              onPressed: () {
                if (state == true) {
                  Navigator.push(
                      context,
                      MaterialPageRoute<void>(
                          builder: (context) => PagGestore()));
                } else {
                  Navigator.push(
                      context,
                      MaterialPageRoute<void>(
                          builder: (context) => PrenotazioneCliente()));
                }
              },
            ),
            label: "Prenotazioni",
          ),
        ],
      ),
    );
  }
}
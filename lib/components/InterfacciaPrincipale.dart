import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:hair2/components/TuttePrenotazioniCliente.dart';
import 'package:hair2/components/Parrucchiere.dart';
import 'Settings.dart';
import 'Gestore.dart';

class InterfacciaPrincipale extends StatefulWidget {
  const InterfacciaPrincipale({Key? key}) : super(key: key);

  @override
  _InterfacciaPrincipaleState createState() => _InterfacciaPrincipaleState();
}

class _InterfacciaPrincipaleState extends State<InterfacciaPrincipale> {
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
                    "Guarda i clienti che hanno prenotato il taglio di capelli",
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
                    "Parrucchiere",
                    style: TextStyle(fontSize: 20),
                  ),
                ],
              ),
            ),
            Expanded(
              child: ListView(
                scrollDirection: Axis.vertical,
                children: [
                  Container(
                    padding: EdgeInsets.all(25),
                    child: Parrucchiere(
                        nome: "img[0]",
                        via: "Cristina e Thomas parrucchieri",
                        rating: 5),
                  ),
                  Container(
                    padding: EdgeInsets.all(25),
                    child: Parrucchiere(
                        nome: "img[1]", via: "Total Look N.&N", rating: 4),
                  ),
                  Container(
                      padding: EdgeInsets.all(25),
                      child: Parrucchiere(
                          nome: "img[2]", via: "Da Vincis", rating: 4)),
                ],
              ),
            )
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

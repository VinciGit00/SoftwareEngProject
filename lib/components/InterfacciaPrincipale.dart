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
  bool state1 = false;
  bool state2 = false;

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
            state2 == false
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
              alignment: Alignment.center,
              child: Row(
                children: [
                  Text(
                    "Abilita la possibilità di tagliare capelli:",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 0, horizontal: 6),
                    child: Text(
                      "Si",
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                  Switch(
                    value: state1,
                    onChanged: (bool s) {
                      setState(() {
                        state1 = s;
                      });
                    },
                    /*activeColor: Colors.blue,
                      activeTrackColor: Colors.blue,*/
                    inactiveThumbColor: Colors.green,
                  ),
                  Text(
                    "No",
                    style: TextStyle(fontSize: 20),
                  ),
                ],
              ),
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
                    value: state2,
                    onChanged: state1 == false
                        ? (bool s) {
                            setState(() {
                              state2 = s;
                            });
                          }
                        : (bool) {
                            final snackBar = SnackBar(
                                content: const Text(
                                    'Non puoi tagliare prenotazioni se non dai la disponibilità!'),
                                action: SnackBarAction(
                                  label: 'Chiudi banner',
                                  onPressed: () {},
                                ));
                            ScaffoldMessenger.of(context)
                                .showSnackBar(snackBar);
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
                  /*ListView.builder(
                    itemCount: lista.length  ,
                    itemBuilder: (context, index)
                    {
                      return Parrucchiere(nome: lista., via: lista., rating: lista.)
                    }
                    ),*/
                  Container(
                    padding: EdgeInsets.all(12.5),
                    child: Parrucchiere(
                        nome: "img[0]",
                        via: "Cristina e Thomas parrucchieri",
                        rating: 5),
                  ),
                  Container(
                    padding: EdgeInsets.all(12.5),
                    child: Parrucchiere(
                        nome: "img[1]", via: "Total Look N.&N", rating: 4),
                  ),
                  Container(
                      padding: EdgeInsets.all(12.5),
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
                if (state2 == true) {
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

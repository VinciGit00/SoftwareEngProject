import 'package:flutter/material.dart';
import 'TravelApp.dart';
import 'travelcard.dart';
import 'Gestore.dart';
import 'Settings.dart';

class Chosen extends StatefulWidget {
  Chosen({Key? key}) : super(key: key);

  @override
  _ChosenState createState() => _ChosenState();
}

class _ChosenState extends State<Chosen> {
  bool state = true;

  void onPressed() {
    print("Pressed");
  }

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
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            margin: EdgeInsets.only(top: 10),
            alignment: Alignment.center,
            child: Text(
              "Scegli una modalità",
              style: TextStyle(
                color: Colors.black,
                fontSize: 25.0,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.all(15),
            child: RaisedButton(
                padding: EdgeInsets.symmetric(vertical: 8, horizontal: 25),
                child: Text(
                  "Cliente",
                  style: TextStyle(color: Colors.white),
                ),
                color: Colors.blue,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(30.0))),
                elevation: 4.0,
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute<void>(
                          builder: (context) => TravelApp()));
                }),
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
            onPressed: () {
              if (state == true) {
                Navigator.push(
                    context,
                    MaterialPageRoute<void>(
                        builder: (context) => PagGestore()));
              } else {
                final snackBar = SnackBar(
                  content: const Text(
                      'Non puoi accettare prenotazioni se non abiliti lo switch'),
                  action: SnackBarAction(
                    label: 'Undo',
                    onPressed: () {
                      // Some code to undo the change.
                    },
                  ),
                );
                ScaffoldMessenger.of(context).showSnackBar(snackBar);
              }
            },
          ),
          Container(
              margin: EdgeInsets.all(9),
              child: Text(
                "Abilita la possibilità di tagliare capelli",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20.0,
                  fontWeight: FontWeight.w300,
                ),
              )),
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
    );
  }
}

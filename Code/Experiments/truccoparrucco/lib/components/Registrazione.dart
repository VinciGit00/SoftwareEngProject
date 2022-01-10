import 'dart:html';
import 'MenuItem.dart';
import 'package:flutter/material.dart';

class Registrazione extends StatefulWidget {
  Registrazione({Key? key}) : super(key: key);

  @override
  _RegistrazioneState createState() => _RegistrazioneState();
}

class _RegistrazioneState extends State<Registrazione> {
  void onPressed() {
    print("Pressed");
  }

  String choice = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //Scaffold = schermata
      appBar: AppBar(
        title: Text("Registrazione nuovo user"),
        //backgroundColor: Colors.blue.shade300,
        //leading: Icon(Icons.arrow_back),
      ),
      body: Column(
          //mainAxisAlignment: MainAxisAlignment.center,
          //crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              "Inserisci la mail",
              style: TextStyle(
                color: Colors.black,
                fontSize: 20.0,
                fontWeight: FontWeight.w300,
              ),
            ),
            TextField(
                //controller: username,
                decoration: InputDecoration(
              labelText: "Mail", //babel text
              hintText: "Inserisci la mail", //hint text
              prefixIcon: Icon(
                  IconData(0xf55f, fontFamily: 'MaterialIcons')), //prefix iocn
              hintStyle: TextStyle(
                  fontSize: 18, fontWeight: FontWeight.bold), //hint text style
              labelStyle: TextStyle(
                  fontSize: 13, color: Colors.blue.shade300), //label style
            )),
            Text(
              "Inserisci la password candidata",
              style: TextStyle(
                color: Colors.black,
                fontSize: 20.0,
                fontWeight: FontWeight.w300,
              ),
            ),
            TextField(
                //controller: username,
                decoration: InputDecoration(
              labelText: "PW", //babel text
              hintText: "Inserisci la password", //hint text
              prefixIcon: Icon(
                IconData(0xe47a, fontFamily: 'MaterialIcons'),
              ), //prefix iocn
              hintStyle: TextStyle(
                  fontSize: 18, fontWeight: FontWeight.bold), //hint text style
              labelStyle: TextStyle(
                  fontSize: 13, color: Colors.blue.shade300), //label style
            )),
            Text(
              "Ripeti  la password",
              style: TextStyle(
                color: Colors.black,
                fontSize: 20.0,
                fontWeight: FontWeight.w300,
              ),
            ),
            TextField(
                //controller: username,
                decoration: InputDecoration(
              labelText: "PW", //babel text
              hintText: "Password", //hint text
              prefixIcon: Icon(
                  IconData(0xe47a, fontFamily: 'MaterialIcons')), //prefix iocn
              hintStyle: TextStyle(
                  fontSize: 18, fontWeight: FontWeight.bold), //hint text style
              labelStyle: TextStyle(
                  fontSize: 13, color: Colors.blue.shade300), //label style
            )),
            Text(
              "Inserisci il tipo di user che vuoi essere",
              style: TextStyle(
                color: Colors.black,
                fontSize: 20.0,
                fontWeight: FontWeight.w300,
              ),
            ),
            PopupMenuButton<MenuItem>(
              onSelected: (item) => setState(() {
                choice = item.text;
              }),
              itemBuilder: (context) => [
                ...TipoTaglio.itemFirst.map(buildItem).toList(),
              ],
            ),
            Text(choice),
            RaisedButton(
              padding: EdgeInsets.symmetric(vertical: 8, horizontal: 25),
              child: Text(
                "My raised button",
                style: TextStyle(color: Colors.white),
              ),
              color: Colors.blue.shade300,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(30.0))),
              elevation: 4.0,
              onPressed: onPressed,
              //child: Icon(Icons.send, color: Colors.white)
            )
          ]),
    );
  }

  PopupMenuItem<MenuItem> buildItem(MenuItem item) => PopupMenuItem(
      value: item,
      child: Row(
        children: [
          Icon(item.icon, color: Colors.black, size: 20),
          Text(item.text)
        ],
      ));
}

class TipoTaglio {
  static const List<MenuItem> itemFirst = [semplice, composto];

  static const semplice = MenuItem(
      text: "Cliente", icon: IconData(0xe61e, fontFamily: 'MaterialIcons'));

  static const composto = MenuItem(
      text: "Gestore", icon: IconData(0xe621, fontFamily: 'MaterialIcons'));
}

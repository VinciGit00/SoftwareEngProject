import 'package:flutter/material.dart';
import 'Changesetting.dart';

class Settings extends StatefulWidget {
  Settings({Key? key}) : super(key: key);

  @override
  _SettingsState createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  bool state = false;
  @override
  Widget build(BuildContext context) {
    String nome = "nickname non ancora inserito";
    String via = "via non ancora inserita";
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
      body: Column(children: [
        Container(
          alignment: Alignment.center,
          padding: EdgeInsets.symmetric(vertical: 8, horizontal: 25),
          child: Text(
            "Impostazioni utente",
            style: TextStyle(
              color: Colors.black,
              fontSize: 25.0,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
        Text(
          "Nome: " + nome,
          style: TextStyle(fontSize: 20),
        ),
        Container(
          padding: EdgeInsets.all(10),
          child: Text("Via:" + via, style: TextStyle(fontSize: 20)),
        ),
        RaisedButton(
            padding: EdgeInsets.symmetric(vertical: 8, horizontal: 25),
            child: Text(
              "Cambia le impostazioni",
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
                      builder: (context) => changeSetting()));
            }),
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
                "No",
                style: TextStyle(fontSize: 20),
              ),
            ],
          ),
        ),
      ]),
    );
  }
}

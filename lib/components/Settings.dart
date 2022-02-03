import 'package:flutter/material.dart';
import 'package:hair2/Model/Entity/user.dart';
import 'Changesetting.dart';

class Settings extends StatefulWidget {
  const Settings({Key? key}) : super(key: key);

  @override
  _SettingsState createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  bool state = false;
  @override
  Widget build(BuildContext context) {
    user().getUserInfo();
    String nome = user().nick;
    String via = user().street;
    return Scaffold(
      //  backgroundColor: Color(0xFFF6F7FF),
      appBar: AppBar(
        elevation: 4.0,
        //backgroundColor: Color(0xFFF6F7FF),
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back_ios,
            // color: Colors.blue,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Column(
        children: [
          Container(
            alignment: Alignment.center,
            padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 25),
            child: const Text(
              "Impostazioni utente",
              style: TextStyle(
                color: Colors.black,
                fontSize: 25.0,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          FutureBuilder(
            future: user().getUserInfo(),
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.done) {
                return Text(
                  "Nome: " + user().nick,
                  style: const TextStyle(fontSize: 20),
                );
              } else {
                return const Text("loading");
              }
            },
          ),
          Container(
            padding: const EdgeInsets.all(5.0),
            child: FutureBuilder(
              future: user().getUserInfo(),
              builder: (context, snapshot) {
                if (snapshot.connectionState == ConnectionState.done) {
                  return Text(
                    "Via: " + user().street,
                    style: const TextStyle(fontSize: 20),
                  );
                } else {
                  return Text("loading");
                }
              },
            ),
          ),
          RaisedButton(
              padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 25),
              child: const Text(
                "Cambia le impostazioni",
                style: TextStyle(color: Colors.white),
              ),
              //color: Colors.blue,
              shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(30.0))),
              elevation: 4.0,
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute<void>(
                        builder: (context) => changeSetting()));
              }),
        ],
      ),
    );
  }
}

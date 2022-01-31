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
    User().getUserInfo();
    String nome = User().nick;
    String via = User().street;
    return Scaffold(
      appBar: AppBar(
        elevation: 4.0,
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back_ios,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Column(children: [
        Container(
          alignment: Alignment.center,
          padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 25),
          child: const Text(
            "Impostazioni utente",
            style: TextStyle(
              fontSize: 25.0,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
        Text(
          "Nome: " + nome,
          style: const TextStyle(fontSize: 20),
        ),
        Container(
          padding: const EdgeInsets.all(10),
          child: Text("Via:" + via, style: const TextStyle(fontSize: 20)),
        ),
        RaisedButton(
            padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 25),
            child: const Text(
              "Cambia le impostazioni",
              style: TextStyle(color: Colors.white),
            ),
            shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(30.0))),
            elevation: 4.0,
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute<void>(
                      builder: (context) => const changeSetting()));
            }),
        FutureBuilder(
          future: User().getUserInfo(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.done) {
              return Text(
                "Nome: " + User().nick,
                style: TextStyle(fontSize: 20),
              );
            } else {
              return const Text("loading");
            }
          },
        ),
      ]),
    );
  }
}

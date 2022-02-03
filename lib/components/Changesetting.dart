import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:hair2/Model/Entity/user.dart';
import '../database_service.dart';
import 'BufferModifiche.dart';

class changeSetting extends StatefulWidget {
  const changeSetting({Key? key}) : super(key: key);

  @override
  _changeSettingState createState() => _changeSettingState();
}

class _changeSettingState extends State<changeSetting> {
  final TextEditingController _nicknameTEC = TextEditingController();
  final TextEditingController _streetTEC = TextEditingController();
  // var _db =  DatabaseService(); // TODO change the way we access the database class

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Color(0xFFF6F7FF),
      appBar: AppBar(
        elevation: 4.0,
        //  backgroundColor: Color(0xFFF6F7FF),
        leading: IconButton(
          icon: const Icon(
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
          padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 25),
          child: const Text(
            "Cambia le impostazioni",
            style: TextStyle(
              color: Colors.black,
              fontSize: 25.0,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
          child: TextField(
            controller: _nicknameTEC,
            obscureText: false,
            decoration: const InputDecoration(
              prefixIcon: Icon(Icons.zoom_out_sharp),
              border: OutlineInputBorder(),
              labelText: 'Inserisci il nuovo nickname',
            ),
          ),
        ),
        Container(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
            child: TextField(
              controller: _streetTEC,
              obscureText: false,
              decoration: const InputDecoration(
                prefixIcon: Icon(Icons.zoom_out_sharp),
                border: OutlineInputBorder(),
                labelText: 'Cambia la via',
              ),
            )),
        Container(
          padding: const EdgeInsets.all(10),
          child: RaisedButton(
              padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 25),
              child: const Text(
                "Conferma le modifiche",
                style: TextStyle(color: Colors.white),
              ),
              //color: Colors.blue,
              shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(30.0))),
              elevation: 4.0,
              onPressed: () {
                var _nickname = _nicknameTEC.text;
                var _street = _streetTEC.text;
                user().addUserInfo(FirebaseAuth.instance.currentUser!.email!,
                    _nickname, _street);
                print("Nickname: " + _nickname);
                print("Street: " + _street);
                if (_nicknameTEC.text != "" && _streetTEC.text != "") {
                  Navigator.push(
                      context,
                      MaterialPageRoute<void>(
                          builder: (context) => const BufferModifiche()));
                } else {
                  final snackBar = SnackBar(
                      content: const Text(
                          'Compila tutti i campi prima di inviare le modifiche!'),
                      action: SnackBarAction(
                        label: 'Chiudi banner',
                        onPressed: () {},
                      ));
                  ScaffoldMessenger.of(context).showSnackBar(snackBar);
                }
              }),
        )
      ]),
    );
  }
}

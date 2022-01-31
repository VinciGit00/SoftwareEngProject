import 'package:flutter/material.dart';
import 'BufferModifiche.dart';

class changeSetting extends StatefulWidget {
  changeSetting({Key? key}) : super(key: key);

  @override
  _changeSettingState createState() => _changeSettingState();
}

class _changeSettingState extends State<changeSetting> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Color(0xFFF6F7FF),
      appBar: AppBar(
        elevation: 4.0,
        // backgroundColor: Color(0xFFF6F7FF),
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
            "Cambia le impostazioni",
            style: TextStyle(
              fontSize: 25.0,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
          child: const TextField(
            obscureText: true,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'Inserisci il nuovo nickname',
            ),
          ),
        ),
        Container(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
            child: const TextField(
              obscureText: true,
              decoration: InputDecoration(
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
              ),
              shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(30.0))),
              elevation: 4.0,
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute<void>(
                        builder: (context) => const BufferModifiche()));
              }),
        )
      ]),
    );
  }
}

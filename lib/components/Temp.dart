import 'package:flutter/material.dart';
import 'InterfacciaPrincipale.dart';

class temp extends StatefulWidget {
  const temp({Key? key}) : super(key: key);

  @override
  _tempState createState() => _tempState();
}

class _tempState extends State<temp> {
  bool state = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 4.0,
        leading: Container(),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            margin: const EdgeInsets.only(top: 10),
            alignment: Alignment.center,
            child: const Text(
              "Prenotazione avvenuta con successo!",
              style: TextStyle(
                fontSize: 25.0,
                fontWeight: FontWeight.w300,
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.all(15),
            child: RaisedButton(
                padding:
                    const EdgeInsets.symmetric(vertical: 8, horizontal: 25),
                child: const Text(
                  "Torna alla schermata principale",
                ),
                shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(30.0))),
                elevation: 4.0,
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute<void>(
                          builder: (context) => const InterfacciaPrincipale()));
                }),
          ),
        ],
      ),
    );
  }
}

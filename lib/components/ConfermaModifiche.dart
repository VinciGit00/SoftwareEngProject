import 'package:flutter/material.dart';
import 'InterfacciaPrincipale.dart';

class confermamodifiche extends StatefulWidget {
  const confermamodifiche({Key? key}) : super(key: key);

  @override
  _confermamodificheState createState() => _confermamodificheState();
}

class _confermamodificheState extends State<confermamodifiche> {
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
            margin: EdgeInsets.only(top: 10),
            alignment: Alignment.center,
            child: const Text(
              "Prenotazione confermata!",
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
                  //style: TextStyle(color: Colors.white),
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

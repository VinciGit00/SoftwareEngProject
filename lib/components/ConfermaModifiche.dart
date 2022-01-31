import 'package:flutter/material.dart';
import 'InterfacciaPrincipale.dart';

class ConfermaModifiche extends StatefulWidget {
  const ConfermaModifiche({Key? key}) : super(key: key);

  @override
  _ConfermaModificheState createState() => _ConfermaModificheState();
}

class _ConfermaModificheState extends State<ConfermaModifiche> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Color(0xFFF6F7FF),
      appBar: AppBar(
        elevation: 4.0,
        // backgroundColor: Color(0xFFF6F7FF),
        leading: Container(),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            margin: const EdgeInsets.only(top: 10),
            alignment: Alignment.center,
            child: const Text(
              "Prenotazione confermata!",
              style: TextStyle(
                // color: Colors.black,
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
                //color: Colors.blue,
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

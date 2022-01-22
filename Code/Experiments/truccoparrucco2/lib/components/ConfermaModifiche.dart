import 'package:flutter/material.dart';
import 'Chosen.dart';

class confermaModifiche extends StatefulWidget {
  confermaModifiche({Key? key}) : super(key: key);

  @override
  _confermaModificheState createState() => _confermaModificheState();
}

class _confermaModificheState extends State<confermaModifiche> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF6F7FF),
      appBar: AppBar(
        elevation: 4.0,
        backgroundColor: Color(0xFFF6F7FF),
        leading: Container(),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            margin: EdgeInsets.only(top: 10),
            alignment: Alignment.center,
            child: Text(
              "Prenotazione confermata!",
              style: TextStyle(
                color: Colors.black,
                fontSize: 25.0,
                fontWeight: FontWeight.w300,
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.all(15),
            child: RaisedButton(
                padding: EdgeInsets.symmetric(vertical: 8, horizontal: 25),
                child: Text(
                  "Torna alla schermata principale",
                  style: TextStyle(color: Colors.white),
                ),
                color: Colors.blue,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(30.0))),
                elevation: 4.0,
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute<void>(builder: (context) => Chosen()));
                }),
          ),
        ],
      ),
    );
  }
}

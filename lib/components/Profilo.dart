import 'package:flutter/material.dart';

class Profilo extends StatefulWidget {
  const Profilo({Key? key}) : super(key: key);

  @override
  _ProfiloState createState() => _ProfiloState();
}

class _ProfiloState extends State<Profilo> {
  @override
  Widget build(BuildContext context) {
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
            "Profilo parrucchiere",
            style: TextStyle(
              fontSize: 25.0,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
        Container(
          alignment: Alignment.topLeft,
          padding: const EdgeInsets.all(12),
          child: const Text("Nome:",
              style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.w600)),
        ),
        Container(
          alignment: Alignment.topLeft,
          padding: const EdgeInsets.all(12),
          child: const Text("Indirizzo:",
              style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.w600)),
        ),
      ]),
    );
  }
}

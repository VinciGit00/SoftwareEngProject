import 'package:flutter/material.dart';
import 'PrenotazioneClienti.dart';

class PrenotazioneCliente extends StatefulWidget {
  const PrenotazioneCliente({Key? key}) : super(key: key);

  @override
  _PrenotazioneClienteState createState() => _PrenotazioneClienteState();
}

class _PrenotazioneClienteState extends State<PrenotazioneCliente> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Color(0xFFF6F7FF),
      appBar: AppBar(
        elevation: 4.0,
        //backgroundColor: Color(0xFFF6F7FF),
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
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Prenotazioni effettuate",
              style: TextStyle(
                color: Colors.black,
                fontSize: 25.0,
                fontWeight: FontWeight.w600,
              ),
            ),
            Expanded(
              child: ListView(
                scrollDirection: Axis.vertical,
                children: [
                  Container(
                    padding: const EdgeInsets.all(25),
                    child: PrenotazioneSingolaCliente(
                        nome: "nome", via: "via", data: DateTime(2020 - 1 - 2)),
                  ),
                  Container(
                    padding: const EdgeInsets.all(25),
                    child: PrenotazioneSingolaCliente(
                        nome: "nome", via: "via", data: DateTime(2020 - 1 - 2)),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

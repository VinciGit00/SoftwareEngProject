import 'package:flutter/material.dart';
import 'package:hair2/Model/Entity/clientBookings.dart';
import 'package:provider/provider.dart';
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
      appBar: AppBar(
        elevation: 4.0,
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
                fontSize: 25.0,
                fontWeight: FontWeight.w600,
              ),
            ),
            Expanded(child:
                Consumer<clientBookings>(builder: (context, bookings, _) {
              return ListView.builder(
                itemCount: bookings.bookings.length,
                itemBuilder: (context, index) {
                  return PrenotazioneSingolaCliente(
                      nome: bookings.bookings[index].stylistEmail,
                      via: bookings.bookings[index].type,
                      data: bookings.bookings[index].appointmentDate);
                },
              );
            })),
            /**Expanded(
              child: ListView(
                scrollDirection: Axis.vertical,
                children: [
                  Container(
                    padding: EdgeInsets.all(25),
                    child: PrenotazioneSingolaCliente(
                        nome: "nome",
                        via: "via",
                        data: new DateTime(2020 - 1 - 2)),
                  ),
                  Container(
                    padding: EdgeInsets.all(25),
                    child: PrenotazioneSingolaCliente(
                        nome: "nome",
                        via: "via",
                        data: new DateTime(2020 - 1 - 2)),
                  ),
                ],
              ),
            ) */
          ],
        ),
      ),
    );
  }
}

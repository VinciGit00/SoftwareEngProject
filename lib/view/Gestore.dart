import 'package:flutter/material.dart';
import 'package:hair2/controller/stylistBookings.dart';
import 'package:hair2/view/PrenotazioneClienti.dart';
import 'package:provider/provider.dart';

class PagGestore extends StatefulWidget {
  PagGestore({Key? key}) : super(key: key);

  @override
  _PagGestoreState createState() => _PagGestoreState();
}

class _PagGestoreState extends State<PagGestore> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Color(0xFFF6F7FF),
      appBar: AppBar(
        elevation: 4.0,
        //backgroundColor: Color(0xFFF6F7FF),
        leading: IconButton(
          icon: Icon(
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
              "Prenotazioni dei clienti",
              style: TextStyle(
                color: Colors.black,
                fontSize: 25.0,
                fontWeight: FontWeight.w600,
              ),
            ),
            Expanded(child:
                Consumer<stylistBookings>(builder: (context, bookings, _) {
              return ListView.builder(
                itemCount: bookings.bookings.length,
                itemBuilder: (context, index) {
                  return PrenotazioneSingolaCliente(
                      //SISTEMARE QUAAA
                      nome: bookings.bookings[index].clientEmail,
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
                        nome: "AAAAAA",
                        via: "via",
                        data: new DateTime(2020 - 1 - 2)),
                  ),
                ],
              ),
            )*/
          ],
        ),
      ),
    );
  }
}

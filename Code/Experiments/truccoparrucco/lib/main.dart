import 'package:flutter/material.dart';
import 'components/Login.dart';
import 'components/Gestore.dart';
import 'components/TravelApp.dart';
import 'components/PrenotazioniCliente.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    //home: PrenotazioneCliente(),
    //home: TravelApp(),
    //home: PagGestore(),
    home: LoginScreen(),
    //home: nextPage(),
    //home: Registrazione(),
  ));
}

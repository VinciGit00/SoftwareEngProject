import 'package:flutter/material.dart';
import 'components/Login.dart';
import 'components/Gestore.dart';
import 'components/TravelApp.dart';
import 'components/PrenotazioniCliente.dart';
import 'components/Chosen.dart';
import 'components/Gestore.dart';
import 'components/NextPage.dart';
import 'components/Buffer.dart';
import 'components/Profilo.dart';
import 'components/travelcard.dart';
import 'components/Settings.dart';
import 'components/Changesetting.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    //home: LoginScreen(),
    //home: Chosen(),
    //home: nextPage(),
    //home: PrenotazioneCliente(),
    //home: Registrazione(),
    //home: Buffer(),
    //home: PagGestore(),
    //home: TravelApp(),
    //home: PagGestore(),
    //home: Profilo(),
    //home: Settings(),
    home: changeSetting(),
  ));
}
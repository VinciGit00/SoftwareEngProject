import 'package:flutter/material.dart';
import 'package:hair2/view/PrenotazioneClienti.dart';
import 'view/Login.dart';
import 'view/Gestore.dart';
import 'view/InterfacciaPrincipale.dart';
import 'view/TuttePrenotazioniCliente.dart';
import 'view/Gestore.dart';
import 'view/NextPage.dart';
import 'view/Buffer.dart';
import 'view/Profilo.dart';
import 'view/Settings.dart';
import 'view/Changesetting.dart';
import 'view/Settings.dart';
import 'view/TuttePrenotazioniCliente.dart';
import 'view/Parrucchiere.dart';
import 'view/StylistListWidget.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    //home: LoginScreen(),
    //home: nextPage(),
    //home: PrenotazioneCliente(),
    //home: Registrazione(),
    //home: Buffer(),
    //home: PagGestore(),
    home: InterfacciaPrincipale(),
    //home: PagGestore(),
    //home: Profilo(),
    //home: Settings(),
    //home: changeSetting(),
    //home: Settings(),
    /*home: PrenotazioneSingolaCliente(
        nome: "a", via: "b", data: new DateTime(2020 - 2 - 2)),*/
    /*home: Parrucchiere(nome: "nome", via: "via", rating: 3),*/
    //home: StylistListWidget(),
  ));
}

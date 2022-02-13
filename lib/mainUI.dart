import 'package:flutter/material.dart';
import 'package:hair2/components/PrenotazioneClienti.dart';
import 'components/Login.dart';
import 'components/Gestore.dart';
import 'components/InterfacciaPrincipale.dart';
import 'components/TuttePrenotazioniCliente.dart';
import 'components/Gestore.dart';
import 'components/NextPage.dart';
import 'components/Buffer.dart';
import 'components/Profilo.dart';
import 'components/Settings.dart';
import 'components/Changesetting.dart';
import 'components/Settings.dart';
import 'components/TuttePrenotazioniCliente.dart';
import 'components/Parrucchiere.dart';
import 'components/StylistListWidget.dart';

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

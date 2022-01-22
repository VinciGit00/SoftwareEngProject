import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:truccoparrucco/components/Chosen.dart';
import 'package:truccoparrucco/components/Settings.dart';
import 'package:truccoparrucco/components/Changesetting.dart';
import 'package:truccoparrucco/components/Wrong.dart';
import 'package:truccoparrucco/components/travelcard.dart';
import 'package:truccoparrucco/components/Temp.dart';
import 'package:truccoparrucco/components/Profilo.dart';
import 'package:truccoparrucco/components/NextPage.dart';
import 'package:truccoparrucco/components/PrenotazioniCliente.dart';
import 'package:truccoparrucco/components/Gestore.dart';
import 'package:truccoparrucco/components/Login.dart';
import 'package:truccoparrucco/components/TravelApp.dart';

void main() {
  testWidgets('Testo la classe chosen', (WidgetTester tester) async {
    await tester.pumpWidget(MaterialApp(home: Chosen()));

    final messageFinder = find.text("Scegli una modalità");

    final addButton1 = find.text('Cliente');

    //Execute the test
    await tester.tap(addButton1);
    await tester.pump();

    //expect(titleFinder, findsOneWidget);
    expect(messageFinder, findsOneWidget);
  });
  testWidgets("Test per vedere se la widget Wrong funziona",
      (WidgetTester tester) async {
    await tester.pumpWidget(MaterialApp(home: SomethingWentWrong()));

    final messageFinder1 = find.text("Errore nella fase di caricamento");

    //Check outputs
    expect(messageFinder1, findsOneWidget);
  });
  testWidgets("Test per vedere se la widget temp funziona",
      (WidgetTester tester) async {
    await tester.pumpWidget(MaterialApp(home: temp()));

    final messageFinder1 = find.text("Prenotazione confermata!");
    final addButton1 = find.text('Torna alla schermata principale');

    //Execute the test
    await tester.tap(addButton1);
    await tester.pump();

    //Check outputs
    expect(messageFinder1, findsOneWidget);
  });

  testWidgets("Test per vedere se la widget profilo cliente funziona",
      (WidgetTester tester) async {
    await tester.pumpWidget(MaterialApp(home: Profilo()));

    final messageFinder1 = find.text("Profilo parrucchiere");
    final messageFinder2 = find.text("Nome:");
    final messageFinder3 = find.text("Indirizzo:");

    //Execute the test
    await tester.pump();

    //Check outputs
    expect(messageFinder1, findsOneWidget);
    expect(messageFinder2, findsOneWidget);
    expect(messageFinder3, findsOneWidget);
  });

  testWidgets("Test per vedere se la widget Prenotazione cliente funziona",
      (WidgetTester tester) async {
    await tester.pumpWidget(MaterialApp(home: PrenotazioneCliente()));

    final messageFinder1 = find.text("Prenotazioni effettuate");

    //Execute the test
    await tester.pump();

    //Check outputs
    expect(messageFinder1, findsOneWidget);
  });

  testWidgets("Test per vedere se la widget Gestore funziona",
      (WidgetTester tester) async {
    await tester.pumpWidget(MaterialApp(home: PagGestore()));

    final messageFinder1 = find.text("Prenotazioni effettuate");

    final addButton1 = find.text('Prenotazioni');
    final addButton2 = find.text('Profilo');

    //Execute the test
    await tester.tap(addButton1);
    await tester.tap(addButton2);
    await tester.pump();

    //Check outputs
    expect(messageFinder1, findsOneWidget);
  });

  testWidgets("Test per vedere se la widget Settings funziona",
      (WidgetTester tester) async {
    await tester.pumpWidget(MaterialApp(home: Settings()));

    final messageFinder1 = find.text("Impostazioni utente");

    final addButton1 = find.text('Cambia le impostazioni');

    //Execute the test
    await tester.tap(addButton1);
    await tester.pump();

    //Check outputs
    expect(messageFinder1, findsOneWidget);
  });

  testWidgets("Test per vedere se la widget ChangeSetting funziona",
      (WidgetTester tester) async {
    await tester.pumpWidget(MaterialApp(home: changeSetting()));

    final messageFinder1 = find.text("Cambia le impostazioni");
    final messageFinder2 = find.text("Inserisci il nuovo nickname");
    final messageFinder3 = find.text("Cambia la via");

    //Execute the test
    await tester.pump();

    //Check outputs
    expect(messageFinder1, findsOneWidget);
    expect(messageFinder2, findsOneWidget);
    expect(messageFinder3, findsOneWidget);
  });
}

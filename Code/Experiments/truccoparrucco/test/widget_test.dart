import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:truccoparrucco/components/Chosen.dart';
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

  /**TEST DA SISTEMAREEE 
  testWidgets("Test per vedere se la widget Chosen funziona",
      (WidgetTester tester) async {
    await tester.pumpWidget(MaterialApp(
        home: TravelCard(
            img: "a.jpeg", HotelName: "Nome", location: "Bormio", rating: 5)));
    /*
    final messageFinder1 = find.text("Errore nella fase di caricamento");

    //Execute the test
    await tester.pump();

    //Check outputs
    expect(messageFinder1, findsOneWidget);*/
  });

    testWidgets("Test per vedere se la widget Chosen funziona",
      (WidgetTester tester) async {
    await tester.pumpWidget(MaterialApp(home: nextPage()));

    final messageFinder1 = find.text("Scegli una modalità");
    final messageFinder2 = find.text("Seleziona il giorno");
    final messageFinder3 =
        find.text("Abilita la possibilità di tagliare capelli");

    final addButton1 = find.text('Esegui richiesta');

    //Execute the test
    await tester.tap(addButton1);
    await tester.pump();

    //Check outputs
    expect(messageFinder1, findsOneWidget);
    expect(messageFinder2, findsOneWidget);
    expect(messageFinder3, findsOneWidget);
  });

  testWidgets("Test per vedere se la widget Login funziona",
      (WidgetTester tester) async {
    await tester.pumpWidget(MaterialApp(home: LoginScreen()));

    final messageFinder1 = find.text("Trucco Parrucco Bormio");
    final messageFinder2 = find.text("Email");
    final messageFinder3 = find.text("Password");
    final messageFinder4 = find.text("Forgot Password?");
    final messageFinder5 = find.text("SIGNUP");
    final messageFinder6 = find.text("or login with");

    //final addButton1 = find.text('LOGIN');

    //Execute the test
    //await tester.tap(addButton1);
    await tester.pump();

    //Check outputs
    expect(messageFinder1, findsOneWidget);
    expect(messageFinder2, findsOneWidget);
    expect(messageFinder3, findsOneWidget);
    expect(messageFinder4, findsOneWidget);
    expect(messageFinder5, findsOneWidget);
  });


  testWidgets("Test per vedere se la widget TravelApp funziona",
      (WidgetTester tester) async {
    await tester.pumpWidget(MaterialApp(home: TravelApp()));

    final messageFinder1 = find.text("Errore nella fase di caricamento");

    //Execute the test
    await tester.pump();

    //Check outputs
    expect(messageFinder1, findsOneWidget);
  });


  
  */
}

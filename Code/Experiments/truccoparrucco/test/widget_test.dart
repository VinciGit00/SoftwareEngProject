import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:truccoparrucco/components/travelcard.dart';
import 'package:truccoparrucco/components/TravelApp.dart';
import 'package:truccoparrucco/components/Chosen.dart';

void main() {
  testWidgets("Test per vedere se la widget creata funziona",
      (WidgetTester tester) async {
    await tester.pumpWidget(prova());

    final messageFinder = find.text("Scegli una modalità");

    //expect(titleFinder, findsOneWidget);
    expect(messageFinder, findsOneWidget);
  });

  /*testWidgets("Prova per vedere se visualizza correttamente la classe",
      (WidgetTester tester) async {
    await tester.pumpWidget(
      const TravelCard(
          img: "a.png",
          HotelName: "Cristina e Thomas parrucchieri",
          location: "Bormio",
          rating: 5),
    );

    final messageFinder = find.text("Bormio");

    //expect(titleFinder, findsOneWidget);
    expect(messageFinder, findsOneWidget);
  });

  testWidgets("Prova per vedere se visualizza correttamente la classe",
      (WidgetTester tester) async {
    await tester.pumpWidget(
      const TravelCard(
          img: "a.png",
          HotelName: "Cristina e Thomas parrucchieri",
          location: "Bormio",
          rating: 5),
    );

    final messageFinder = find.text("Bormio");

    //expect(titleFinder, findsOneWidget);
    expect(messageFinder, findsOneWidget);
  });*/
}

class prova extends StatefulWidget {
  prova({Key? key}) : super(key: key);

  @override
  _provaState createState() => _provaState();
}

class _provaState extends State<prova> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Chosen(),
    );
  }
}

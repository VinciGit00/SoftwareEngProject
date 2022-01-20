import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:truccoparrucco/components/travelCard.dart';

void main() {
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
}

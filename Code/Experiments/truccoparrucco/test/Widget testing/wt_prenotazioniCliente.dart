import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:truccoparrucco/components/PrenotazioniCliente.dart';

void main() {
  testWidgets("Test per vedere se la widget Chosen funziona",
      (WidgetTester tester) async {
    await tester.pumpWidget(MaterialApp(home: PrenotazioneCliente()));

    final messageFinder1 = find.text("Prenotazioni effettuate");

    //Execute the test
    await tester.pump();

    //Check outputs
    expect(messageFinder1, findsOneWidget);
  });
}

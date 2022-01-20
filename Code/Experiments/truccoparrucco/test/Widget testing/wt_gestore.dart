import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:truccoparrucco/components/Gestore.dart';

void main() {
  testWidgets("Test per vedere se la widget Chosen funziona",
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
}

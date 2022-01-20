import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:truccoparrucco/components/Temp.dart';

void main() {
  testWidgets("Test per vedere se la widget Chosen funziona",
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
}

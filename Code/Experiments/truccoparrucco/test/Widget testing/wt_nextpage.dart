import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:truccoparrucco/components/NextPage.dart';

void main() {
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
}

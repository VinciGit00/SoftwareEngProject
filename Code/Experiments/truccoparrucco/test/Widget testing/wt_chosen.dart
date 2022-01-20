import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:truccoparrucco/components/Chosen.dart';

void main() {
  testWidgets("Test per vedere se la widget Chosen funziona",
      (WidgetTester tester) async {
    await tester.pumpWidget(MaterialApp(home: Chosen()));

    final messageFinder1 = find.text("Scegli una modalità");
    final messageFinder2 =
        find.text("Abilita la possibilità di tagliare capelli");

    final addButton1 = find.byKey(ValueKey("Bottone1"));
    final addButton2 = find.byKey(ValueKey("Bottone2"));

    //Execute the test
    await tester.tap(addButton1);
    await tester.tap(addButton2);
    await tester.pump();

    //Check outputs
    expect(messageFinder1, findsOneWidget);
    expect(messageFinder2, findsOneWidget);
  });
}

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:truccoparrucco/components/Profilo.dart';

void main() {
  testWidgets("Test per vedere se la widget Chosen funziona",
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
}

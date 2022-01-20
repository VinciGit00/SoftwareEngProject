import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:truccoparrucco/components/Login.dart';

void main() {
  testWidgets("Test per vedere se la widget Chosen funziona",
      (WidgetTester tester) async {
    await tester.pumpWidget(MaterialApp(home: LoginScreen()));

    final messageFinder1 = find.text("Trucco Parrucco Bormio");
    final messageFinder2 = find.text("Email");
    final messageFinder3 = find.text("Password");
    final messageFinder4 = find.text("Forgot Password?");
    final messageFinder5 = find.text("SIGNUP");
    final messageFinder6 = find.text("or login with");

    final addButton1 = find.text('LOGIN');

    //Execute the test
    await tester.tap(addButton1);
    await tester.pump();

    //Check outputs
    expect(messageFinder1, findsOneWidget);
    expect(messageFinder2, findsOneWidget);
    expect(messageFinder3, findsOneWidget);
    expect(messageFinder4, findsOneWidget);
    expect(messageFinder5, findsOneWidget);
  });
}

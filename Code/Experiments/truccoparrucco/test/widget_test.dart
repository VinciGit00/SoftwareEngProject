// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility that Flutter provides. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:truccoparrucco/main.dart';

void main() {
  testWidgets("Given When a Then B", (WidgetTester tester) async {
    await tester.pumpWidget(MaterialApp());

    //await tester.tap(find.byKey(Key("LOGIN")));

    //expect(find.text("LOGIN"), findsOneWidget);
  });
}

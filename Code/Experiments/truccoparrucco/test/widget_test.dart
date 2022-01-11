import 'package:flutter_test/flutter_test.dart';
import 'package:truccoparrucco/components/travelcard.dart';
import 'package:truccoparrucco/components/TravelApp.dart';

void main() {
  testWidgets("Test per vedere se la widget creata funziona",
      (WidgetTester tester) async {
    await tester.pumpWidget(const TravelApp());

    //final titleFinder = find.text('a.jpg');
    final messageFinder = find.text("Welcome in TruccoParrucco");

    //expect(titleFinder, findsOneWidget);
    expect(messageFinder, findsOneWidget);
  });
}

import 'package:flutter_test/flutter_test.dart';
import 'package:truccoparrucco/components/travelcard.dart';
import 'package:truccoparrucco/components/TravelApp.dart';

void main() {
  testWidgets("Test per vedere se la widget creata funziona",
      (WidgetTester tester) async {
    await tester.pumpWidget(const TravelApp());

    //final titleFinder = find.text('a.jpg');
    final messageFinder = find.text("Cristina e Thomas parrucchieri");

    //expect(titleFinder, findsOneWidget);
    expect(messageFinder, findsOneWidget);
  });
  testWidgets("Prova per vedere se visualizza correttamente la classe",
      (WidgetTester tester) async {
    await tester.pumpWidget(
      const TravelCard(
          img: "a.png",
          HotelName: "Cristina e Thomas parrucchieri",
          location: "Bormio",
          rating: 5),
    );

    final messageFinder = find.text("Bormio");

    //expect(titleFinder, findsOneWidget);
    expect(messageFinder, findsOneWidget);
  });
}

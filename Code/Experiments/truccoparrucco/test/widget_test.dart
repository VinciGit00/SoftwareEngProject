import 'package:flutter_test/flutter_test.dart';
import 'package:truccoparrucco/components/travelcard.dart';

void main() {
  testWidgets("Test per vedere se la widget creata funziona",
      (WidgetTester tester) async {
    await tester.pumpWidget(const TravelCard(
        img: "a.jpg", HotelName: 'T', location: 'M', rating: 4));

    final titleFinder = find.text('T');
    final messageFinder = find.text('M');

    expect(titleFinder, findsOneWidget);
    expect(messageFinder, findsOneWidget);
  });
}

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:truccoparrucco/components/travelcard.dart';
import 'package:truccoparrucco/components/NextPage.dart';
import 'package:truccoparrucco/components/MenuItem.dart';

void main() {
  //Unit testing
  test('Unit test sulla creazione della TravelCard', () {
    final Card = TravelCard(
        img: "a.jpg", HotelName: "Da Vincis", location: "Bormio", rating: 4);

    expect(Card.img, "a.jpg");
    expect(Card.HotelName, "Da Vincis");
    expect(Card.location, "Bormio");
    expect(Card.rating, 4);
  });
  test('Unit test sulla creazione del MenutItem', () {
    final Menu = MenuItem(text: "ProvaTesto", icon: Icons.share);
    expect(Menu.text, "ProvaTesto");
    expect(Menu.icon, Icons.share);
  });

  test("Unit test per NextPage.dart", () {
    final pag2 = nextPage();

    String a = pag2.onPressed2();

    expect(a, "Pressed");
  });
}

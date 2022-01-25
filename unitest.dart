import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:hair2/Model/Entity/booking.dart';
import 'package:hair2/Model/Entity/stylist.dart';
import 'package:hair2/Model/Entity/stylist2.dart';

void main() {
  //Unit testing
  test('Unit test sulla creazione della classe Booking', () {
    final book = booking("a", "b", "c", "d", new DateTime(2020, 2, 2));

    expect(book.key, "a.jpg");
    expect(book.clientEmail, "Da Vincis");
    expect(book.stylistEmail, "Bormio");
    expect(book.type, 4);
    expect(book.appointmentDate, new DateTime(2020, 2, 2));
  });
  /*test('Unit test sulla creazione della classe booking', () {
    final S =
        Stylist();
    expect(Menu.text, "ProvaTesto");
    expect(Menu.category, "Semplice");
    expect(Menu.icon, Icons.share);
  });*/
}

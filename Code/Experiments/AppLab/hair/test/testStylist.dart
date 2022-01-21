import 'package:flutter_test/flutter_test.dart';
//import 'package:hair/components/Model/Entity/stylist.dart';
import '../lib/Model/Entity/stylist.dart';

void main(List<String> args) {
  test('Provo a vedere se la classe Stylist funziona', () {
    Stylist s = Stylist(id: "12345", email: "mvincig11@gmail.com");

    expect(s.id, "12345");
    expect(s.email, "mvincig11@gmail.com");
  });
}

import 'package:flutter_test/flutter_test.dart';
import 'package:hair/Model/Entity/client.dart';
//import 'package:hair/components/Model/Entity/client.dart';

void main() {
  test('Provo a vedere se la classe counter funziona', () {
    Client c = Client.fromSnapshot("mvincig11@gmail.com");
    Client c1 = Client.fromSnapshot2();

    expect(c.email, "mvincig11@gmail.com");
    expect(c1.email, "default@email.com");
  });
}

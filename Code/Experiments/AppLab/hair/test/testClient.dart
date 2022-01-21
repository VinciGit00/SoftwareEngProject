import 'package:hair/components/Model/Entity/client.dart';

void main() {
  test('Provo a vedere se la classe counter funziona', () {
    Client c = new Client("mvincig11@gmail.com");
    Client c1 = new Client("mvincig11@gmail.com");

    expect(c.email, "mvincig11@gmail.com");
    expect(c1.email, "default@email.com");
  });
}

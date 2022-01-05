import 'package:test/test.dart';

void main() {
  // Define the test
  test("Testo la correttezza delle classi", () {
    // Expected values
    var expected = 30;

    // Act
    var actual = Add(10, 20);

    // Asset
    expect(actual, expected);
  });
}

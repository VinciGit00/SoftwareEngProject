import 'package:test/test.dart';
import 'Cliente.dart';
import 'Negozio.dart';
import 'Prenotazione.dart';
import 'Sesso.dart';

void main() {
  // Define the test
  test("Testo la correttezza delle classi", () {
    // Expected values
    String expected = "Vinciguerra";
    String codice = "codice1";

    // Actual
    Cliente C1 =
        new Cliente.constructor1("Marco", "Vinciguerra", 11, Sesso.maschio);

    Prenotazione P = new Prenotazione(new DateTime(20000, 1, 6), "codice1");

    Cliente C2 =
        new Cliente.constructor2("Marco", "Vinciguerra", 11, Sesso.maschio, P);

    // Asset
    expect(C1.cognome, expected);

    //Provo la funzione che ho delegato
    expect(C2.ScriviPrenotazione(), codice);

    //TODOOO = fare i test anche per i negoziIIIIIII
  });
}

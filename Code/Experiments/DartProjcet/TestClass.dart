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
    DateTime d = new DateTime(20000, 1, 6);
    String codice = "codice1";
    String codiceUnito = "$d ${codice}";
    int IVA = 01001010101;
    // Actual
    Cliente C1 =
        new Cliente.constructor1("Marco", "Vinciguerra", 11, Sesso.maschio);

    Prenotazione P = new Prenotazione(new DateTime(20000, 1, 6), "codice1");

    Cliente C2 =
        new Cliente.constructor2("Marco", "Vinciguerra", 11, Sesso.maschio, P);

    Negozio N1 =
        new Negozio.constructor1("Marco", 01001010101, "Vittorio Veneto");
    Negozio N2 =
        new Negozio.constructor2("Marco", 01001010101, "Vittorio Veneto", P);

    // Asset
    expect(C1.cognome, expected);

    //Provo la funzione che ho delegato
    expect(C2.ScriviPrenotazione(), codiceUnito);

    expect(N2.PartitaIVA, IVA);
  });
}

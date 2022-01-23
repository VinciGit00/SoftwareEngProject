import 'package:test/test.dart';
import 'Cliente.dart';
import 'Parrucchiere.dart';
import 'Prenotazione.dart';
import 'Sesso.dart';
import 'Visibility.dart';

void main() {
  // Define the test
  test("Testo la correttezza delle classi", () {
    // Expected values
    String expected = "Vinciguerra";
    String nome = "Marco";
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

    Parrucchiere N1 = new Parrucchiere.constructor1(
        "Marco", 01001010101, "Vittorio Veneto", Visibility.yes);
    Parrucchiere N2 = new Parrucchiere.constructor2(
        "Marco", 01001010101, "Vittorio Veneto", P, Visibility.yes);

    // Asset
    expect(C1.cognome, expected);

    //Provo la funzione che ho delegato
    expect(C2.ScriviPrenotazione(), codiceUnito);

    expect(N1.nome, nome);

    expect(N2.PartitaIVA, IVA);

    // Provo la funzione per cambiare la visibilità
    N2.ChangeVisibility();
    expect(N2.readV(), Visibility.no);
  });
}

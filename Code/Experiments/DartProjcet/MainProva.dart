import 'Cliente.dart';
import 'Parrucchiere.dart';
import 'Prenotazione.dart';
import 'Sesso.dart';
import 'Visibility.dart';

void main() {
  //Clienti
  Cliente C1 =
      new Cliente.constructor1("Marco", "Vinciguerra", 11, Sesso.maschio);
  print(C1.cognome);

  Prenotazione P = new Prenotazione(new DateTime(20000, 1, 6), "codice1");
  P.Leggi();

  print("---------------------------");
  Cliente C2 =
      new Cliente.constructor2("Marco", "Vinciguerra", 11, Sesso.maschio, P);
  C2.leggiPrenotazione();

  print("---------------------------");
  // Negozi
  Parrucchiere N1 = new Parrucchiere.constructor1(
      "Marco", 01001010101, "Vittorio Veneto", Visibility.yes);
  Parrucchiere N2 = new Parrucchiere.constructor2(
      "Marco", 01001010101, "Vittorio Veneto", P, Visibility.yes);

  N2.LeggiInfoPrenotazione();
}

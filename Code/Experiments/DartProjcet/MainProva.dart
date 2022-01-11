import 'Cliente.dart';
import 'Negozio.dart';
import 'Prenotazione.dart';
import 'Sesso.dart';

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
  Negozio N1 =
      new Negozio.constructor1("Marco", 01001010101, "Vittorio Veneto");
  Negozio N2 =
      new Negozio.constructor2("Marco", 01001010101, "Vittorio Veneto", P);

  N2.LeggiInfoPrenotazione();
}

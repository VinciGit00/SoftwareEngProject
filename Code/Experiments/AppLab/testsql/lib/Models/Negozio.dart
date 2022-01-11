import 'Prenotazione.dart';

class Negozio {
  // Field
  String nome;
  int PartitaIVA;
  String via;
  Prenotazione P;

  // Constructor
  Negozio.constructor1(String nome, int PartitaIVA, String via) {
    this.nome = nome;
    this.PartitaIVA = PartitaIVA;
    this.via = via;
  }

  Negozio.constructor2(
      String nome, int PartitaIVA, String via, Prenotazione P) {
    this.nome = nome;
    this.PartitaIVA = PartitaIVA;
    this.via = via;
    this.P = P;
  }

  // Functions
  void LeggiInfoPrenotazione() {
    P.Leggi();
  }

  String ScriviPrenotazione() {
    return P.scriviP();
  }
}

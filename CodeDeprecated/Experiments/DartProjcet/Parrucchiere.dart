import 'Prenotazione.dart';
import 'Visibility.dart';

class Parrucchiere {
  // Field
  String nome;
  int PartitaIVA;
  String via;
  Prenotazione P;
  Visibility V;

  // Constructor
  Parrucchiere.constructor1(
      String nome, int PartitaIVA, String via, Visibility V) {
    this.nome = nome;
    this.PartitaIVA = PartitaIVA;
    this.via = via;
    this.V = V;
  }

  Parrucchiere.constructor2(
      String nome, int PartitaIVA, String via, Prenotazione P, Visibility V) {
    this.nome = nome;
    this.PartitaIVA = PartitaIVA;
    this.via = via;
    this.P = P;
    this.V = V;
  }

  // Functions
  void LeggiInfoPrenotazione() {
    P.Leggi();
  }

  void ChangeVisibility() {
    if (this.V == Visibility.yes)
      this.V = Visibility.no;
    else if (this.V == Visibility.no) this.V = Visibility.yes;
  }

  Visibility readV() {
    return this.V;
  }

  String ScriviPrenotazione() {
    return P.scriviP();
  }
}

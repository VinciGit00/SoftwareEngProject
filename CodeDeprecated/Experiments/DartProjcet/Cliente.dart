import 'Sesso.dart';
import 'Prenotazione.dart';

class Cliente {
  // Field
  String nome;
  String cognome;
  int idcliente;
  Sesso s;
  Prenotazione P;

  //Constructor
  Cliente.constructor1(String nome, String cognome, int idcliente, Sesso s) {
    this.nome = nome;
    this.cognome = cognome;
    this.idcliente = idcliente;
  }

  //Ovverride del costruttore
  Cliente.constructor2(
      String nome, String cognome, int idcliente, Sesso s, Prenotazione P) {
    this.nome = nome;
    this.cognome = cognome;
    this.idcliente = idcliente;
    this.P = P;
  }

  // Functions
  void leggiPrenotazione() {
    print(nome + " " + cognome);
    P.Leggi();
  }

  String ScriviPrenotazione() {
    return P.scriviP();
  }
}

import 'Sesso.dart';
import 'Prenotazione.dart';

class Cliente {
  // Field
  String nome;
  String cognome;
  int idcliente;
  Sesso s;
  Prenotazione P;
  // Account fields
  String? email;
  String password;

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

  Cliente.account({this.email, this.password});

  factory Cliente.fromMap(Map<String, dynamic> json) => new Cliente.account(
        email: json['email'],
        password: json['name'],
      );

  Map<String, dynamic> toMap() {
    return {
      'email': email,
      'password': password,
    };
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

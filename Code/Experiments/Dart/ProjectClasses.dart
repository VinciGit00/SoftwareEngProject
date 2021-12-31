class Cliente {
  // Field
  late String nome;
  late String cognome;
  late int idcliente;
  late Sesso s;

  //Constructor
  Cliente(String nome, String cognome, int idcliente, Sesso s) {
    this.nome = nome;
    this.cognome = cognome;
    this.idcliente = idcliente;
  }

  // Functions

}

class Prenotazione {
  // Field
  late DateTime Data;
  late String codice;

  //Constructor
  Prenotazione(DateTime Data, String codice) {
    this.Data = Data;
    this.codice = codice;
  }

  // Functions
}

class Negozio {
  // Field
  late String nome;
  late int PartitaIVA;
  late String via;

  // Constructor
  Negozio(String nome, int PartitaIVA, String via) {
    this.nome = nome;
    this.PartitaIVA = PartitaIVA;
    this.via = via;
  }

  // Functions
}

class Listino {
  // Field
  late int ID;

  // Constructor
  Listino(int ID) {
    this.ID = ID;
  }
  // Functions

}

abstract class Taglio {
  //Abstract classes does not have the constructor
  // Field
  late int ID;
  late String tipologia;
  late int Costo;
  late int Durata;
  late String Descrizione;
  late String Procedura;

  // Functions

}

class Stutturato extends Taglio {
  // Fields
  late Prodotto p;
  late Macchinario m;

  // Constructor
  Stutturato() {}
}

class Semplice extends Taglio {}

// Support classes
enum Sesso { maschio, femmina, altro }

class Prodotto {
  // Fields
  late int idProdotto;
  late int Dimensione;

  //Constructor
  Prodotto(int idProdotto, int Dimensione) {
    this.idProdotto = idProdotto;
    this.Dimensione = Dimensione;
  }
}

class Macchinario {
  //Fields
  late int idMacchinario;
  late int ImportoAmmortamento;

  //Constructor
  Macchinario(int idMacchinario, int ImportoAmmortamento) {
    this.idMacchinario = idMacchinario;
    this.ImportoAmmortamento = ImportoAmmortamento;
  }
}

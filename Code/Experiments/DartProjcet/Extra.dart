class Prodotto {
  // Fields
  int idProdotto;
  int Dimensione;

  //Constructor
  Prodotto(int idProdotto, int Dimensione) {
    this.idProdotto = idProdotto;
    this.Dimensione = Dimensione;
  }
}

class Macchinario {
  //Fields
  int idMacchinario;
  int ImportoAmmortamento;

  //Constructor
  Macchinario(int idMacchinario, int ImportoAmmortamento) {
    this.idMacchinario = idMacchinario;
    this.ImportoAmmortamento = ImportoAmmortamento;
  }
}

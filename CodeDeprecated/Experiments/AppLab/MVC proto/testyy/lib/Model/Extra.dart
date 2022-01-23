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

class Prenotazione {
  // Field
  DateTime _data;
  String _codice;

  //Constructor
  Prenotazione(DateTime Data, String codice) {
    this._data = Data;
    this._codice = codice;
  }

  // Functions
  void Leggi() {
    print(_codice);
    print(_data);
  }

  String scriviP() {
    return _codice;
  }
}

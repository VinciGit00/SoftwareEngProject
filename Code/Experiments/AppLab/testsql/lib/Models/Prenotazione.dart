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
    print("$_data ${_codice}");
  }

  String scriviP() {
    return "$_data ${_codice}";
  }
}

class Client {
  // Field
  String email = 'default@email.com';

  //Constructor
  Client.fromSnapshot(String email) {
    this.email = email;
  }

  Client.fromSnapshot2() {}

  //Ovverride del costruttore

  // Functions
  void leggiPrenotazione() {}

  void ScriviPrenotazione() {}
}

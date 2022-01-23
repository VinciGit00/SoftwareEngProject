import 'package:testyy/Model/Model.dart';
import 'package:testyy/Model/Sesso.dart';

class Controller {
  Controller con = Controller();

  void AddClient(String nome, String cognome, int idCliente, Sesso s) =>
      Model.addClient(nome, cognome, idCliente, s);
}

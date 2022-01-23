import 'Cliente.dart';
import 'Negozio.dart';
import 'Prenotazione.dart';
import 'Sesso.dart';

class Model {
  static List<Cliente> clients = [];
  static List<Prenotazione> prenotazioni = [];
  static List<Negozio> negozi = [];

  static void addClient(String nome, String cognome, int idCliente, Sesso s) {
    Cliente c = Cliente.constructor1(nome, cognome, idCliente, s);
    clients.add(c);
  }
}

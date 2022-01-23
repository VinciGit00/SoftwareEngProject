import 'Extra.dart';

abstract class Taglio {
  //Abstract classes does not have the constructor
  // Field
  int ID;
  String tipologia;
  int Costo;
  int Durata;
  String Descrizione;
  String Procedura;

  // Functions

}

class Stutturato extends Taglio {
  // Fields
  Prodotto p;
  Macchinario m;

  // Constructor
  Stutturato() {}
}

class Semplice extends Taglio {}

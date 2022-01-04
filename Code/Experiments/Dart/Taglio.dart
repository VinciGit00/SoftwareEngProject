import 'Extra.dart';

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

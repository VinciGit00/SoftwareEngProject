import 'package:firebase_database/firebase_database.dart';

class Stylist {
  final String? id;
  final String? email;

  Stylist({this.id, this.email});

  //Constructor
  Stylist.fromSnapshot(DataSnapshot snapshot)
      : id = snapshot.key,
        email = 'test';
  //email = snapshot.value?['email'];

  toJson() {
    return {
      "email": email,
    };
  }
}

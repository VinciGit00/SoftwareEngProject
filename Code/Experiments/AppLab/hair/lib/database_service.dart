import 'package:firebase_database/firebase_database.dart';

import 'Model/Entity/stylist.dart';

class DatabaseService {
  final database = FirebaseDatabase.instance;
  DatabaseService();
//Bookings
  Future<void> addBooking(String clientEmail, String stylistEmail, String type,
      DateTime appointmentDate) async {
    await database.ref('bookings').push().set({
      'clientEmail': clientEmail,
      'stylistEmail': stylistEmail,
      'type': type,
      'appointmentDate': appointmentDate.toString(),
      'inputDate': DateTime.now().toString(),
    });
  }

//Stylists
  Future<void> addStylist(String email) async {
    await database.ref('stylists').push().set({
      'email': email,
      'inputDate': DateTime.now().toString(),
    });
  }

  Future<void> becomeStylist(String email) async {
    await database.ref('stylists').push().set({
      'email': email,
      'inputDate': DateTime.now().toString(),
    });
  }

  Future<void> stopBeingStylist(String email) async {
    var directory = await database.ref('stylists');
    var val = await directory.orderByChild('email').equalTo(email).once();

    Map<dynamic, dynamic> values = val.snapshot.value as Map<dynamic, dynamic>;
    values.forEach((key, values) {
      directory.child(key).remove();
    });
  }

  Future<void> getStylistBookings(String email) async {
    var directory = await database.ref('bookings');
    var val = await directory.orderByChild('email').equalTo(email).once();

    Map<dynamic, dynamic> values = val.snapshot.value as Map<dynamic, dynamic>;
    values.forEach((key, values) {
      print(key);
      print(values);
      directory.child(key).remove();
    });
  }

  //User info
  Future<void> addUserInfo(String email, String nick, String street) async {
    await database.ref('users').push().set({
      'email': email,
      'nick': nick,
      'street': street,
      'inputDate': DateTime.now().toString(),
    });
  }

  //tests
  Future<List<Stylist>?> readData() async {
    DatabaseEvent event = await database.ref('stylists').once();

    //print(event.snapshot.value);

    List<Stylist> Stylists = [];

    Map<dynamic, dynamic> values =
        event.snapshot.value as Map<dynamic, dynamic>;
    values.forEach((key, values) {
      //Stylists?.add(Stylist.fromSnapshot(values));
      Stylists.add(Stylist(id: key, email: values['email']));
      print(key);
      print(values['email']);
    });

    Stylists.forEach((element) {
      print(element.email);
    });

    return Stylists;
  }
}

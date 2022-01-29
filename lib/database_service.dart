import 'package:firebase_database/firebase_database.dart';

import 'Model/Entity/clientBookings.dart';
import 'Model/Entity/stylist.dart';
import 'Model/Entity/stylistBookings.dart';
import 'Model/Entity/user.dart';

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

  void readClientBookings(String email) {
    var bookings = clientBookings(email).bookings;
    for (var booking in bookings) {
      print(booking.toMap().toString());
    }
  }

  void readStylistBookings(String email) {
    var bookings = stylistBookings(email).bookings;
    for (var booking in bookings) {
      print(booking.toMap().toString());
    }
  }

//Stylists
  Future<void> addStylist(String email) async {
    await database.ref('stylists').push().set({
      'email': email,
      'inputDate': DateTime.now().toString(),
    });
  }

  Future<void> becomeStylist(String email) async {
    late String nick;
    late String street;
    try {
      nick = user().nickname;
      street = user().streetname;
    } on Exception catch (e) {
      nick = 'NoNickname';
      street = 'NoStreet';
    }
    await database.ref('stylists/' + nick).update({
      'nick': nick,
      'email': email,
      'street': street,
      'inputDate': DateTime.now().toString(),
    });
  }

  Future<void> stopBeingStylist() async {
    /**var directory = await database.ref('stylists');
    var val = await directory.orderByChild('email').equalTo(email).once();

    Map<dynamic, dynamic> values = val.snapshot.value as Map<dynamic, dynamic>;
    values.forEach((key, values) {
      directory.child(key).remove();
    });
    */
    print(user().nickname);
    await database.ref('stylists/' + user().nickname).remove();
  }

  // Future<void> getStylistBookings(String email) async {}

  //User info
  Future<void> addUserInfo(String email, String nick, String street) async {
    await database.ref('users/' + nick).update({
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

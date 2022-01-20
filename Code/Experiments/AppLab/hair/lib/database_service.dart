import 'package:firebase_database/firebase_database.dart';

import 'Model/Entity/stylist.dart';

class DatabaseService {
  final database = FirebaseDatabase.instance;
  DatabaseService();

  Future<void> addBooking(String idClient, String idStyilist, String type,
      DateTime appointmentDate) async {
    await database.ref('bookings').push().set({
      'idClient': idClient,
      'idStyilist': idStyilist,
      'type': type,
      'appointmentDate': appointmentDate.toString(),
      'currentTime': DateTime.now().toString(),
    });
  }

  Future<void> addStylist(String email) async {
    await database.ref('stylist').push().set({
      'email': email,
      //'currentTime': DateTime.now().toString(),
    });
  }

  Future<void> becomeStylist(String idStyilist) async {
    await database.ref('stylist').push().set({
      'idStyilist': idStyilist,
      'currentTime': DateTime.now().toString(),
    });
  }

  //read data from realtime database
  Future<List<Stylist>?> readData() async {
    DatabaseEvent event = await database.ref('stylist').once();

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

  //method that returns if stylists
}

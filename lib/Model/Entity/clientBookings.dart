import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'Booking.dart';

class clientBookings extends ChangeNotifier {
  List<Booking> _bookings = [];
  final _db = FirebaseDatabase.instance;

  clientBookings(email) {
    _ReadBookings(email);
  }

  void _ReadBookings(email) async {
    var directory = await _db.ref('bookings');
    var event =
        await directory.orderByChild('clientEmail').equalTo(email).once();

    Map<dynamic, dynamic> values =
        event.snapshot.value as Map<dynamic, dynamic>;
    values.forEach((key, values) {
      print(values);
      _bookings.add(Booking(key, values['clientEmail'], values['stylistEmail'],
          values['type'], DateTime.parse(values['appointmentDate'])));
    });

    //notifyListeners();
  }

  //create a getter for bookings
  List<Booking> get bookings => _bookings;
}

import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'booking.dart';

class stylistBookings extends ChangeNotifier {
  List<booking> _bookings = [];
  final _db = FirebaseDatabase.instance;

  HairStylists(email) {
    _ReadStylists(email);
  }

  void _ReadStylists(email) async {
    var directory = await _db.ref('bookings');
    var event =
        await directory.orderByChild('stylistEmail').equalTo(email).once();

    Map<dynamic, dynamic> values =
        event.snapshot.value as Map<dynamic, dynamic>;
    values.forEach((key, values) {
      _bookings.add(booking(key, values['clientEmail'], values['stylistEmail'],
          values['type'], DateTime(values['appointmentDate'])));
    });

    notifyListeners();
  }
}

import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:hair2/controller/stylist.dart';
import 'dart:async';

class HairStylists extends ChangeNotifier {
  List<Stylist> _stylists = [];
  final _db = FirebaseDatabase.instance.ref();
  late StreamSubscription<DatabaseEvent> _subscription;
  late DatabaseEvent event;

  HairStylists() {
    //_ReadStylists();
    _StreamChanges();
  }

  void _ReadStylists() async {
    event = await _db.child('stylists').once();

    Map<dynamic, dynamic> values =
        event.snapshot.value as Map<dynamic, dynamic>;
    values.forEach((key, values) async {
      _stylists.add(Stylist(
          id: key,
          email: values['email'],
          nick: values['nick'],
          street: values['street']));
    });

    notifyListeners();
  }

  void _StreamChanges() {
    _subscription = _db.child('stylists').onValue.listen((event) {
      Map<dynamic, dynamic> values =
          event.snapshot.value as Map<dynamic, dynamic>;
      _stylists.clear();

      values.forEach((key, values) {
        stylists.add(Stylist(
            id: key,
            email: values['email'],
            nick: values['nick'],
            street: values['street']));
      });

      notifyListeners();
    });
  }

  // create a getter for Stylists
  List<Stylist> get stylists => _stylists;

  @override
  void dispose() {
    _subscription.cancel();
    super.dispose();
  }
}

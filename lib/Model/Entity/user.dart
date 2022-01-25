import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';

class user extends ChangeNotifier {
  late String email;
  late String nick;
  late String street;
  final database = FirebaseDatabase.instance;

  user._privateConstructor(); //pattern to create a singleton
  static final user _instance = user._privateConstructor();
  factory user() => _instance;

  Future<void> addUserInfo(String email, String nick, String street) async {
    this.email = email;
    this.nick = nick;
    this.street = street;

    await database.ref('users/' + nick).update({
      'email': email,
      'nick': nick,
      'street': street,
      'inputDate': DateTime.now().toString(),
    });
  }

  String get nickname => nick;
  String get streetname => street;
}

import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';

class user extends ChangeNotifier {
  late String email;
  late String nick;
  late String street;
  final database = FirebaseDatabase.instance;

  user._privateConstructor() {
    this.email = "";
    this.nick = "";
    this.street = "";
    getUserInfo();
  } //pattern to create a singleton
  static late final user _instance = user._privateConstructor();
  factory user() => _instance;

  /*
  Future<void> addUserInfo(String email, String nick, String street) async {
    var directory = await database.ref('users');
    var event = await directory.orderByChild('email').equalTo(email).once();

    if (event.snapshot.value != null) {
      var t = event.snapshot.value as List<dynamic>;
      var mappy = t[0] as Map<dynamic, dynamic>;
      await database.ref('users/' + mappy['nick']).remove();
    }

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
  */
  /*
  Future<void> getUserInfo() async {
    var directory = await database.ref('users');
    var event = await directory
        .orderByChild('email')
        .equalTo(FirebaseAuth.instance.currentUser!.email!)
        .once();

    if (event.snapshot.value != null) {
      var t = event.snapshot.value as List<dynamic>;
      var mappy = t[0] as Map<dynamic, dynamic>;

      if (mappy != null) {
        print(mappy['email']);
        this.email = mappy['email'];
        this.nick = mappy['nick'];
        this.street = mappy['street'];
      }
    }
  }
  */

// /*
  Future<void> addUserInfo(String email, String nick, String street) async {
    var directory = await database.ref('users');
    var event = await directory.orderByChild('email').equalTo(email).once();

    if (event.snapshot.value != null) {
      Map<dynamic, dynamic> values =
          event.snapshot.value as Map<dynamic, dynamic>;
      values.forEach((key, values) async {
        print(values);
        await database.ref('users/' + values['nick']).remove();
      });
    }

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
  // */

  // /*

  Future<void> getUserInfo() async {
    var directory = await database.ref('users');
    var event = await directory
        .orderByChild('email')
        .equalTo(FirebaseAuth.instance.currentUser!.email!)
        .once();

    var t = event.snapshot.value;

    if (event.snapshot.value != null) {
      Map<dynamic, dynamic> values =
          event.snapshot.value as Map<dynamic, dynamic>;
      values.forEach((key, values) async {
        print(values);
        this.email = values['email'];
        this.nick = values['nick'];
        this.street = values['street'];
      });
    } else {
      this.nick = 'no nick';
      this.street = 'no street';
    }
  }
  // */

/*
  Future<void> addUserInfo(String email, String nick, String street) async {
    try {
      var directory = await database.ref('users');
      var event = await directory.orderByChild('email').equalTo(email).once();

      if (event.snapshot.value != null) {
        Map<dynamic, dynamic> values =
            event.snapshot.value as Map<dynamic, dynamic>;
        values.forEach((key, values) async {
          print(values);
          await database.ref('users/' + values['nick']).remove();
        });
      }

      this.email = email;
      this.nick = nick;
      this.street = street;

      await database.ref('users/' + nick).update({
        'email': email,
        'nick': nick,
        'street': street,
        'inputDate': DateTime.now().toString(),
      });
    } on Exception catch (e) {
      var directory = await database.ref('users');
      var event = await directory.orderByChild('email').equalTo(email).once();

      if (event.snapshot.value != null) {
        var t = event.snapshot.value as List<dynamic>;
        var mappy = t[0] as Map<dynamic, dynamic>;
        await database.ref('users/' + mappy['nick']).remove();
      }

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
  }

  Future<void> getUserInfo() async {
    try {
      var directory = await database.ref('users');
      var event = await directory
          .orderByChild('email')
          .equalTo(FirebaseAuth.instance.currentUser!.email!)
          .once();

      var t = event.snapshot.value;

      if (event.snapshot.value != null) {
        Map<dynamic, dynamic> values =
            event.snapshot.value as Map<dynamic, dynamic>;
        values.forEach((key, values) async {
          print(values);
          this.email = values['email'];
          this.nick = values['nick'];
          this.street = values['street'];
        });
      } else {
        this.nick = 'no nick';
        this.street = 'no street';
      }
    } on Exception catch (e) {
      var directory = await database.ref('users');
      var event = await directory
          .orderByChild('email')
          .equalTo(FirebaseAuth.instance.currentUser!.email!)
          .once();

      if (event.snapshot.value != null) {
        var t = event.snapshot.value as List<dynamic>;
        var mappy = t[0] as Map<dynamic, dynamic>;

        if (mappy != null) {
          print(mappy['email']);
          this.email = mappy['email'];
          this.nick = mappy['nick'];
          this.street = mappy['street'];
        }
      }
    }
  } */

  String get nickname => nick;
  String get streetname => street;
}

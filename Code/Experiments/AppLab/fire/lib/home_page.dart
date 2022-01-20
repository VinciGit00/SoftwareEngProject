import 'package:fire/authentication_service.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'database_service.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var _email = context.read<AuthenticationService>().userEmail();

    var db = DatabaseService();

    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Welcome: " + _email!), // TODO turn into null safe version!
            RaisedButton(
              onPressed: () {
                context.read<AuthenticationService>().signOut();
              },
              child: Text("Sign out"),
            ),
            RaisedButton(
              onPressed: () {
                print('start');
                //db.addData('test', 'test', 'test');
                //print(db.database.child("name").parent!.key);
                db.database.push().set({
                  "name": "John",
                  "age": 18,
                  "address": {"line1": "100 Mountain View"}
                });
                print('done');
              },
              child: const Text("Add booking"),
            ),
            RaisedButton(
              onPressed: () {
                db.readData();
              },
              child: Text("read"),
            ),
          ],
        ),
      ),
    );
  }
}

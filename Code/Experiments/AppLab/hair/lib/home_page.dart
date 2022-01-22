import 'package:hair/authentication_service.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:hair/components/StylistListWidget.dart';
import 'package:provider/provider.dart';

import 'Model/Entity/stylist2.dart';
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
            ElevatedButton(
              onPressed: () {
                context.read<AuthenticationService>().signOut();
              },
              child: const Text("Sign out"),
            ),
            Text("Stylists functionality"),
            ElevatedButton(
              onPressed: () {
                print('start');
                db.addStylist('email@test.com');
                print('done');
              },
              child: const Text("Add Stylist"),
            ),
            /**ElevatedButton(
              onPressed: () {
                db.readData();
              },
              child: const Text("add stylists to entitites"),
            ),*/
            ElevatedButton(
              onPressed: () {
                db.becomeStylist(_email);
              },
              child: const Text("become stylist"),
            ),
            ElevatedButton(
              onPressed: () {
                db.stopBeingStylist(_email);
              },
              child: const Text("stop being stylist"),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ChangeNotifierProvider<HairStylists>(
                      create: (_) => HairStylists(),
                      child: StylistListWidget(),
                    ),
                  ),
                );
              },
              child: const Text("stylist list"),
            ),
            Text("Booking functionality"),
            ElevatedButton(
              onPressed: () {
                db.addBooking(
                  _email,
                  'StylistEmail',
                  'type',
                  DateTime.now(),
                );
              },
              child: const Text("add booking"),
            ),
            Text("User functionality"),
            ElevatedButton(
              onPressed: () {
                db.addUserInfo(_email, 'nick', 'via einstein');
              },
              child: const Text("add user info"),
            ),
          ],
        ),
      ),
    );
  }
}

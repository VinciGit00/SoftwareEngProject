import 'package:firebase_auth/firebase_auth.dart';
import 'package:hair2/Model/Entity/clientBookings.dart';
import 'package:hair2/authentication_service.dart';
import 'package:hair2/home_page.dart';
import 'package:hair2/sign_in_page.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'Model/Entity/stylist2.dart';
import 'components/InterfacciaPrincipale.dart';
import 'components/Login.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        Provider<AuthenticationService>(
          create: (_) => AuthenticationService(FirebaseAuth.instance),
        ),
        StreamProvider(
          create: (context) =>
              context.read<AuthenticationService>().authStateChanges,
          initialData: null,
        ),
        ChangeNotifierProvider<HairStylists>(
            create: (_) => HairStylists(), lazy: false),
        //ChangeNotifierProvider<clientBookings>(create: (_) => clientBookings()),
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        home: AuthenticationWrapper(),
      ),
    );
  }
}

class AuthenticationWrapper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final firebaseUser = context.watch<User?>();

    if (firebaseUser != null) {
      return InterfacciaPrincipale();
    }
    return LoginScreen();
  }
}

import 'package:firebase_auth/firebase_auth.dart';
import 'package:hair2/controller/clientBookings.dart';
import 'package:hair2/controller/authentication_service.dart';
import 'package:hair2/view/home_page.dart';
import 'package:hair2/view/sign_in_page.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'view/theme.dart';

import 'controller/stylist2.dart';
import 'view/InterfacciaPrincipale.dart';
import 'view/Login.dart';

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
        themeMode: ThemeMode.system,
        theme: white,
        darkTheme: dark,
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

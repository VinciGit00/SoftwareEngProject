import 'package:flutter/material.dart';
import 'main.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:hair2/Model/Entity/clientBookings.dart';
import 'package:hair2/authentication_service.dart';
import 'package:hair2/home_page.dart';
import 'package:hair2/sign_in_page.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'components/theme.dart';

import 'Model/Entity/stylist2.dart';
import 'components/InterfacciaPrincipale.dart';
import 'components/Login.dart';

//Quality metrics:
// Calcolo complessità: flutter pub run dart_code_metrics:metrics analyze lib
// File non utilizzati: flutter pub run dart_code_metrics:metrics check-unused-files lib

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    // Replace with actual values
    options: const FirebaseOptions(
      apiKey: "AIzaSyDUseQaLHqDBREp79yq_JUam_toBUC0Tbc",
      appId: "1:208777354980:web:8d869d40a6a8acebedd6f1",
      messagingSenderId: "208777354980",
      projectId: "hair2-9d321",
    ),
  );
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

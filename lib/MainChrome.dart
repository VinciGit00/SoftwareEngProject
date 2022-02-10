import 'package:flutter/material.dart';
import 'main.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';

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
  runApp(const MyApp());
}

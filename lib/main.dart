import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'screens/temperature_page.dart';
import 'firebase_options.dart'; // اگر از flutterfire configure استفاده کرده باشی

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform, // گزینه Firebase
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Monitoring',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const TemperaturePage(),
    );
  }
}

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import './app/landing_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Time Tracker',
      theme: ThemeData(
        primaryColor: Colors.indigo,
      ),
      home: LandingPage(),
    );
  }
}

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/Babysitter1.dart';
import 'package:flutter_application_1/home%20screen.dart';
import 'package:flutter_application_1/login%20Babysitter.dart';
import 'package:flutter_application_1/login%20parent.dart';
import 'package:flutter_application_1/parent.dart';
import 'package:firebase_auth/firebase_auth.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(),
      home: HomeScreen(),
      routes: {
        "Parent": (context) => Parent(),
        "Babysitter": (context) => Babysitter(),
        "Babysitter1": (context) => Babysitter1(),
        "Parent1": (context) => Parent1(),
      },
    );
  }
}

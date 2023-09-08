import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:gdsc_app/home.dart';
import 'package:gdsc_app/register.dart';
import 'package:gdsc_app/login.dart';

import 'first.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: 'first',
      routes: {
        'first': (context) => MyFirst(),
        'register': (context) => MyRegister(),
        'login': (context) => MyLogin(),
        'home': (context) => MyHome(),
      },
    );
  }
}

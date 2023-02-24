import 'package:flutter/material.dart';
import 'package:locq_opc/pages/landing/landing_page.dart';
import 'package:locq_opc/pages/login/login_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Coding Assessment',
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const LoginPage(),
        '/home': (context) => LandingPage(token: 'asdasdqdasd'),
      },
    );
  }
}
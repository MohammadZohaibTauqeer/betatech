import 'package:betatech/modules/contact.dart';
import 'package:betatech/modules/home.dart';
import 'package:betatech/modules/portfolio.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        // '/portfolio': (context) => Portfolio(),
        // '/': (context) => const HomePage(),
        '/': (context) => Contact(),
        // '/anotherPage': (context) => const AnotherPage(),
      },
    );
  }
}

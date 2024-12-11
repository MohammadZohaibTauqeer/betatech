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
        '/': (context) => Portfolio(),
        //'/': (context) => const HomePage(),
        // '/anotherPage': (context) => const AnotherPage(),
      },
    );
  }
}

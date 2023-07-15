import 'package:flutter/material.dart';
import 'package:flutter2023/homepage.dart';
import 'package:flutter2023/singup.dart';
import 'home.dart';
import 'listpage.dart';
import 'login.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: const Homepage(),
        theme: ThemeData(),
        routes: {
          'login': (context) => const Login(),
          'singup': ((context) => const Singup()),
          'homepage': ((context) => Test()),
          'home': ((context) => const Home())
        });
  }
}

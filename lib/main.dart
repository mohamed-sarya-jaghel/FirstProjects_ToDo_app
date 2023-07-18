import 'package:flutter/material.dart';
import 'package:flutter2023/home_page.dart';
import 'package:flutter2023/singup_page.dart';
import 'create-group_page.dart';
import 'todo_list_page.dart';
import 'login_page.dart';

void main() {
  runApp(const ToDo_App());
}

class ToDo_App extends StatelessWidget {
  const ToDo_App({super.key});

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

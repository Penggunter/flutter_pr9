import 'package:flutter/material.dart';
import 'package:flutter_pr9/src/homePage.dart';
import 'src/data/userData.dart';

void main() {
  runApp(
      const UserData(
        username: "Penguin",
        child: MainApp(),
      ),
    );
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter pr9',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: const Color.fromARGB(255,241,222,14)),
        useMaterial3: true,
      ),
      home: HomePage(),
    );
  }
}

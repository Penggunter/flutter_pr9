import "package:flutter/material.dart";
import 'data/userData.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
  final user = UserData.of(context).username;

    return Scaffold(
      appBar: AppBar(title: const Text('Flutter pr9'),),
        body:  Center(
          child: Text('Hello, $user !'),
        ),
      );
  }
}
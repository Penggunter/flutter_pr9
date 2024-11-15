import "package:flutter/material.dart";
import 'package:flutter_pr9/main.dart';
import 'data/userData.dart';
import 'data/userService.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {


  @override
  Widget build(BuildContext context) {
  final user = UserData.of(context).username;
  print(GetIt.instance.isRegistered(instance: "user_service"));

  final userService = GetIt.instance<UserService>(instanceName: "user_service");

  return Scaffold(
    appBar: AppBar(title: const Text('Flutter pr9'),),
      body:  Center(
        child: Text('Hello, $user and ${userService.username}!'),
      ),
    );
  }
}
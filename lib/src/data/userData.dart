import "package:flutter/material.dart";

class UserData extends InheritedWidget {
  final String username;

  const UserData({
    required this.username,
    required Widget child,
  }) : super(child: child);

  static UserData of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<UserData>()!;
  }

  @override
  bool updateShouldNotify(UserData oldWidget) {
    return username != oldWidget.username;
  }
}
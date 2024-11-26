import 'package:api_widget_test_app/home_screen.dart';
import 'package:api_widget_test_app/user_repository.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Users Example',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomeScreen(
        futureUsers: UserRepository().fetchUsers(),
      ),
    );
  }
}
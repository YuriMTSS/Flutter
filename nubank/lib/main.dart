import 'package:flutter/material.dart';
import 'package:nubank/pages/login/login_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Nubank',
      theme: ThemeData(
        primaryColor: Colors.deepPurple,
      ),
      home: const LoginPage(),
    );
  }
}

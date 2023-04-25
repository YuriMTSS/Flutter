import 'package:flutter/material.dart';
import 'Calculadora.dart';

void main() => runApp(meuApp());

class meuApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Calculadora Simples',
      theme: new ThemeData(primarySwatch: Colors.deepPurple),
      home: new Calculadora(),
    );
  }
}

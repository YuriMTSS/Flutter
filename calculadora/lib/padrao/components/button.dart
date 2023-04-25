// ignore_for_file: constant_identifier_names

import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  static const DARK = Color.fromRGBO(82, 82, 82, 1);
  static const DEFAULT = Color.fromRGBO(112, 112, 112, 1);
  static const OPERATION = Color.fromRGBO(250, 158, 13, 1);
  final String text;
  final Color color;
  final bool big;
  final void Function(String) cb;

  const Button(
      {super.key,
      this.big = false,
      required this.text,
      this.color = DEFAULT,
      required this.cb});

  const Button.big(
      {super.key,
      this.big = true,
      required this.text,
      this.color = DEFAULT,
      required this.cb});

  const Button.operation(
      {super.key,
      this.big = false,
      required this.text,
      this.color = OPERATION,
      required this.cb});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: big ? 2 : 1,
      child: TextButton(
        style: TextButton.styleFrom(backgroundColor: color),
        child: Text(
          text,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 32,
            fontWeight: FontWeight.w200,
          ),
        ),
        onPressed: () => cb(text),
      ),
    );
  }
}

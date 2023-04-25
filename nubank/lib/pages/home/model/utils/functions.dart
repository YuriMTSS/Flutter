import 'package:flutter/material.dart';

class Itens extends StatelessWidget {
  final String text;
  final Icon icon;
  final Icon iButton;
  final VoidCallback? onPressed;
  const Itens(
      {super.key,
      required this.text,
      required this.icon,
      required this.iButton,
      required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 10, top: 10),
          child: icon,
        ),
        Padding(
          padding: const EdgeInsets.only(top: 10, left: 5),
          child: Text(
            text,
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          ),
        ),
        const Spacer(),
        Padding(
          padding: const EdgeInsets.only(top: 10),
          child: IconButton(onPressed: onPressed, icon: iButton),
        ),
      ],
    );
  }
}

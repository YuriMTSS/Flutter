import 'package:flutter/material.dart';

class MyPath extends StatelessWidget {
  const MyPath(
      {super.key,
      required this.innerColor,
      required this.outerColor,
      required this.child});

  final Color innerColor;
  final Color outerColor;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(1.0),
        child: ClipRRect(
            borderRadius: BorderRadius.circular(6),
            child: Container(
                padding: const EdgeInsets.all(12),
                color: outerColor,
                child: Center(
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Container(
                      color: innerColor,
                      child: Center(
                        child: child,
                      ),
                    ),
                  ),
                ))));
  }
}

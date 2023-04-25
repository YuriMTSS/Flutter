import 'package:flutter/material.dart';

class MyPixel extends StatelessWidget {
  const MyPixel(
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
                padding: const EdgeInsets.all(4),
                color: outerColor,
                child: Center(
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Container(
                      padding: const EdgeInsets.all(4),
                      color: innerColor,
                      child: Center(
                        child: child,
                      ),
                    ),
                  ),
                ))));
  }
}

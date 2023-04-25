import 'package:flutter/material.dart';

class Arvore extends StatelessWidget {
  final double arvoreX;
  final double arvoreY;
  final double arvoreWidth;
  final double arvoreHeight;

  const Arvore(
      {super.key,
      required this.arvoreX,
      required this.arvoreY,
      required this.arvoreWidth,
      required this.arvoreHeight});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment((2 * arvoreX + arvoreWidth) / (2 - arvoreWidth),
          (2 * arvoreY + arvoreHeight) / (2 - arvoreHeight)),
      child: SizedBox(
        height: MediaQuery.of(context).size.height * 2 / 3 * arvoreHeight / 2,
        width: MediaQuery.of(context).size.width * arvoreWidth / 2,
        child: Image.asset(
          'assets/arvore.jpg',
          fit: BoxFit.fill,
        ),
      ),
    );
  }
}

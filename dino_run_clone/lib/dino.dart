import 'package:flutter/material.dart';

class Dino extends StatelessWidget {
  final double dinoX;
  final double dinoY;
  final double dinoWidth;
  final double dinoHeight;

  const Dino(
      {super.key,
      required this.dinoX,
      required this.dinoY,
      required this.dinoWidth,
      required this.dinoHeight});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment((2 * dinoX + dinoWidth) / (2 - dinoWidth),
          (2 * dinoY + dinoHeight) / (2 - dinoHeight)),
      child: SizedBox(
        height: MediaQuery.of(context).size.height * 2 / 3 * dinoHeight / 2,
        width: MediaQuery.of(context).size.width * dinoWidth / 2,
        child: Image.asset(
          'assets/Chrome_Dino.png',
          fit: BoxFit.fill,
        ),
      ),
    );
  }
}

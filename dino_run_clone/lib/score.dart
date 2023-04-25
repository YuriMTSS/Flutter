// ignore_for_file: prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';

class Score extends StatelessWidget {
  final bestScore;
  final score;

  const Score({super.key, required this.bestScore, required this.score});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              Image.asset(
                'assets/card.png',
                width: 60,
              ),
              Text(
                score.toString(),
                style: const TextStyle(color: Colors.green, fontSize: 30),
              )
            ],
          ),
          Column(
            children: [
              Image.asset(
                'assets/trofeu.png',
                width: 45,
              ),
              Text(
                bestScore.toString(),
                style: const TextStyle(color: Colors.green, fontSize: 30),
              ),
            ],
          )
        ],
      ),
    );
  }
}

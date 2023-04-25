// ignore_for_file: must_be_immutable, file_names

import 'package:flutter/material.dart';

class GameOver extends StatelessWidget {
  bool gameOver;
  GameOver({super.key, required this.gameOver});

  @override
  Widget build(BuildContext context) {
    return gameOver
        ? Stack(
            children: [
              Container(
                alignment: const Alignment(0, -0.7),
                child: Text(
                  'Ohhhhhhhhhh no.......',
                  style: TextStyle(color: Colors.grey.shade800, fontSize: 40),
                ),
              ),
              Container(
                alignment: const Alignment(0, -0.1),
                child: Image.asset('assets/game_over.png'),
              )
            ],
          )
        : Container();
  }
}

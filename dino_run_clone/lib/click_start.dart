import 'package:flutter/material.dart';

class ClickStart extends StatelessWidget {
  final bool gameHasStarted;
  const ClickStart({super.key, required this.gameHasStarted});

  @override
  Widget build(BuildContext context) {
    return gameHasStarted
        ? Container()
        : Stack(
            children: [
              Container(
                  alignment: const Alignment(0, 0),
                  child: SizedBox(
                      height: 600,
                      width: 300,
                      child: Image.asset(
                        'assets/start.png',
                      ))),
              Container(
                alignment: const Alignment(0, -0.7),
                child: const Text(
                  'Dino game',
                  style: TextStyle(
                      color: Colors.green,
                      fontSize: 60,
                      fontWeight: FontWeight.bold),
                ),
              )
            ],
          );
  }
}

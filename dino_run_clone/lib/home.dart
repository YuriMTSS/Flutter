import 'dart:async';

import 'package:dino_run_clone/arvore.dart';
import 'package:dino_run_clone/click_start.dart';
import 'package:dino_run_clone/dino.dart';
import 'package:dino_run_clone/gameHasOver.dart';
import 'package:dino_run_clone/score.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  double dinoX = -0.5;
  double dinoY = 1;
  double dinoWidth = 0.2;
  double dinoHeight = 0.4;

  double arvoreX = 0.5;
  double arvoreY = 1;
  double arvoreWidth = 0.2;
  double arvoreHeight = 0.4;

  double gravity = 9.8;
  double height = 0;
  double time = 0;
  double velocity = 5;

  int score = 0;
  int bestScore = 0;

  bool hasStartedGame = false;
  bool gameOver = false;
  bool centralJump = false;
  bool dinoHasPassedArvore = false;

  void startGame() {
    setState(() {
      hasStartedGame = true;
    });
    Timer.periodic(const Duration(milliseconds: 10), (timer) {
      if (detectForColision()) {
        gameOver = true;
        timer.cancel();
        setState(() {
          if (score > bestScore) {
            bestScore = score;
          }
        });
      }
      loopArvore();
      updateForScore();
      setState(() {
        arvoreX -= 0.01;
      });
    });
  }

  void updateForScore() {
    if (arvoreX < dinoX && dinoHasPassedArvore == false) {
      setState(() {
        dinoHasPassedArvore = true;
        score++;
      });
    }
  }

  void loopArvore() {
    setState(() {
      if (arvoreX <= -1.2) {
        arvoreX = 1.2;
        dinoHasPassedArvore = false;
      }
    });
  }

  bool detectForColision() {
    if (arvoreX <= dinoX + dinoWidth &&
        arvoreX + arvoreWidth >= dinoX &&
        dinoY >= arvoreY - arvoreHeight) {
      return true;
    }
    return false;
  }

  void jumpDino() {
    centralJump = true;
    Timer.periodic(const Duration(microseconds: 10), (timer) {
      height = -gravity / 2 * time * time + velocity * time;

      setState(() {
        if (1 - height > 1) {
          resetJumpDino();
          dinoY = 1;
          timer.cancel();
        } else {
          dinoY = 1 - height;
        }
      });
      if (gameOver) {
        timer.cancel();
      }

      time += 0.01;
    });
  }

  void resetJumpDino() {
    centralJump = false;
    time = 0;
  }

  void playGameAgain() {
    setState(() {
      gameOver = false;
      hasStartedGame = false;
      arvoreX = 1.2;
      score = 0;
      dinoY = 1;
      centralJump = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: gameOver
          ? (playGameAgain)
          : (hasStartedGame ? (centralJump ? null : jumpDino) : startGame),
      child: Scaffold(
        backgroundColor: Colors.blue.shade200,
        body: Column(
          children: [
            Expanded(
                flex: 2,
                child: Center(
                  child: Stack(
                    children: [
                      ClickStart(gameHasStarted: hasStartedGame),
                      Score(bestScore: bestScore, score: score),
                      Dino(
                          dinoX: dinoX,
                          dinoY: dinoY - dinoHeight,
                          dinoWidth: dinoWidth,
                          dinoHeight: dinoHeight),
                      Arvore(
                          arvoreX: arvoreX,
                          arvoreY: arvoreY - arvoreHeight,
                          arvoreWidth: arvoreWidth,
                          arvoreHeight: arvoreHeight),
                      GameOver(gameOver: gameOver)
                    ],
                  ),
                )),
            Expanded(
                child: Container(
              color: Colors.grey.shade600,
              child: const Center(
                child: Text(
                  'D I N O',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 22,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ))
          ],
        ),
      ),
    );
  }
}

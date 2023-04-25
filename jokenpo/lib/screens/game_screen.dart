// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:jokenpo/screens/main_screen.dart';

import '../utils/game.dart';
import '../widgets/game_button.dart';

class GameScreen extends StatefulWidget {
  GameScreen(this.gameChoice, {super.key});
  Choice gameChoice;

  @override
  State<GameScreen> createState() => _GameScreenState();
}

class _GameScreenState extends State<GameScreen> {
  @override
  Widget build(BuildContext context) {
    double btnWidth = MediaQuery.of(context).size.width / 2 - 60;

    String? robotChoice = Game.randomChoice();
    String robotChoicePath = "";

    String? playerChoice;
    switch (robotChoice) {
      case "Pedra":
        robotChoicePath = 'assets/rock_btn.png';
        break;
      case "Papel":
        robotChoicePath = 'assets/paper_btn.png';
        break;
      case "Tesoura":
        robotChoicePath = 'assets/scisor_btn.png';
        break;
      default:
    }

    switch (widget.gameChoice.type) {
      case "Pedra":
        playerChoice = 'assets/rock_btn.png';
        break;
      case "Papel":
        playerChoice = 'assets/paper_btn.png';
        break;
      case "Tesoura":
        playerChoice = 'assets/scisor_btn.png';
        break;
      default:
    }

    if (Choice.gameRule[widget.gameChoice.type]![robotChoice] ==
        "Você ganhou") {
      setState(() {
        Game.score++;
      });
    }

    return Scaffold(
      backgroundColor: const Color(0xff060a47),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 34.0, horizontal: 20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              padding: const EdgeInsets.all(16.0),
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.white, width: 5.0),
                  borderRadius: BorderRadius.circular(8.0)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Pontuação: ',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "${Game.score}",
                    style: const TextStyle(
                        color: Colors.white,
                        fontSize: 25.0,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            SizedBox(
              width: double.infinity,
              height: MediaQuery.of(context).size.height / 2,
              child: Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Hero(
                        tag: "${widget.gameChoice.type}",
                        child: gameButton(null, playerChoice!, btnWidth)),
                    const Text(
                      'VS',
                      style: TextStyle(color: Colors.white, fontSize: 26.0),
                    ),
                    gameButton(null, robotChoicePath, btnWidth)
                  ],
                ),
              ),
            ),
            Text(
              "${Choice.gameRule[widget.gameChoice.type]![robotChoice]}",
              style: const TextStyle(
                  color: Colors.white,
                  fontSize: 36.0,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 2.0),
            ),
            SizedBox(
              width: double.infinity,
              child: RawMaterialButton(
                padding: const EdgeInsets.all(10.0),
                shape: const StadiumBorder(
                    side: BorderSide(color: Colors.white, width: 5.0)),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const MainScreenPage()));
                },
                child: const Text(
                  'Jogar de novo',
                  style: TextStyle(color: Colors.white, fontSize: 20.0),
                ),
              ),
            ),
            SizedBox(
              width: double.infinity,
              child: RawMaterialButton(
                padding: const EdgeInsets.all(10.0),
                shape: const StadiumBorder(
                    side: BorderSide(color: Colors.white, width: 5.0)),
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return alerta;
                    },
                  );
                },
                child: const Text(
                  'Regras',
                  style: TextStyle(color: Colors.white, fontSize: 24.0),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  AlertDialog alerta = AlertDialog(
    title: const Center(child: Text('Regras do jogo')),
    actions: [
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: Column(
                children: const [
                  Text(
                    'Papel perde para Tesoura',
                    style:
                        TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
                  ),
                  Text('Tesoura perde para Pedra',
                      style: TextStyle(
                          fontSize: 18.0, fontWeight: FontWeight.bold)),
                  Text('Pedra perde para Papel',
                      style: TextStyle(
                          fontSize: 18.0, fontWeight: FontWeight.bold)),
                  Text('==========================='),
                  Text('Papel ganha de Pedra',
                      style: TextStyle(
                          fontSize: 18.0, fontWeight: FontWeight.bold)),
                  Text('Pedra ganha de Tesoura',
                      style: TextStyle(
                          fontSize: 18.0, fontWeight: FontWeight.bold)),
                  Text('Tesoura ganha de Papel',
                      style: TextStyle(
                          fontSize: 18.0, fontWeight: FontWeight.bold)),
                ],
              ),
            )
          ],
        ),
      )
    ],
  );
}

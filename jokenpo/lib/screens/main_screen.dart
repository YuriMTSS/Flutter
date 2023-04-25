import 'package:flutter/material.dart';
import 'package:jokenpo/screens/game_screen.dart';

import '../utils/game.dart';
import '../widgets/game_button.dart';

class MainScreenPage extends StatefulWidget {
  const MainScreenPage({super.key});

  @override
  State<MainScreenPage> createState() => _MainScreenPageState();
}

class _MainScreenPageState extends State<MainScreenPage> {
  @override
  Widget build(BuildContext context) {
    double btnWidth = MediaQuery.of(context).size.width / 2 - 60;

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
                        fontSize: 28.0,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "${Game.score}",
                    style: const TextStyle(
                        color: Colors.white,
                        fontSize: 28.0,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            SizedBox(
              width: double.infinity,
              height: MediaQuery.of(context).size.height / 2,
              child: Center(
                child: Stack(
                  children: [
                    Positioned(
                        top: 0,
                        left: MediaQuery.of(context).size.width / 2 -
                            btnWidth / 2 -
                            20,
                        child: Hero(
                            tag: "Pedra",
                            child: gameButton(() {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          GameScreen(Choice("Pedra"))));
                            }, 'assets/rock_btn.png', btnWidth))),
                    Positioned(
                        top: btnWidth,
                        left: MediaQuery.of(context).size.width / 2 -
                            btnWidth -
                            40,
                        child: Hero(
                          tag: "Papel",
                          child: gameButton(() {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        GameScreen(Choice("Papel"))));
                          }, 'assets/paper_btn.png', btnWidth),
                        )),
                    Positioned(
                        top: btnWidth,
                        right: MediaQuery.of(context).size.width / 2 -
                            btnWidth -
                            40,
                        child: Hero(
                          tag: "Tesoura",
                          child: gameButton(() {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        GameScreen(Choice("Tesoura"))));
                          }, 'assets/scisor_btn.png', btnWidth),
                        )),
                  ],
                ),
              ),
            ),
            SizedBox(
              width: double.infinity,
              child: RawMaterialButton(
                padding: const EdgeInsets.all(16.0),
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

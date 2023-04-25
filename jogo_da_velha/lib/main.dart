import 'package:flutter/material.dart';
import 'package:jogo_da_velha/utils/game_logic.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: GameScreen(),
    );
  }
}

class GameScreen extends StatefulWidget {
  const GameScreen({super.key});

  @override
  State<GameScreen> createState() => _GameScreenState();
}

class _GameScreenState extends State<GameScreen> {
  Game game = Game();
  String lastValue = "X";
  bool gameOver = false;
  int turno = 0;
  String resultado = "";

  List<int> scoreBoard = [0, 0, 0, 0, 0, 0, 0, 0, 0];

  @override
  void initState() {
    super.initState();
    game.board = Game.initGameBoard();
  }

  @override
  Widget build(BuildContext context) {
    double boardWidth = MediaQuery.of(context).size.width - 25;
    return Scaffold(
      backgroundColor: Colors.purple.shade900,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(20),
            child: Text(
              'Jogo da velha',
              style: TextStyle(
                  fontSize: 25,
                  color: Colors.orange.shade800,
                  fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Divider(
              thickness: 1,
              color: Colors.yellow.shade900,
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          Text(
            'Próxima jogada: $lastValue',
            style: TextStyle(
                fontSize: 20,
                color: Colors.orange.shade800,
                fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 15,
          ),
          SizedBox(
            width: boardWidth,
            height: boardWidth,
            child: GridView.count(
              crossAxisCount: Game.boardLenght ~/ 3,
              padding: const EdgeInsets.all(10.0),
              mainAxisSpacing: 15.0,
              crossAxisSpacing: 15.0,
              children: List.generate(Game.boardLenght, (index) {
                return InkWell(
                  onTap: gameOver
                      ? null
                      : () {
                          if (game.board![index] == "") {
                            setState(() {
                              game.board![index] = lastValue;
                              turno++;
                              gameOver = game.winnerCheck(
                                  lastValue, index, scoreBoard, 3);
                              if (gameOver) {
                                resultado = "Jogador $lastValue é o vencedor!";
                                _showResult(resultado);
                              } else if (!gameOver && turno == 9) {
                                resultado = "Empate!";
                                _showResult(resultado);
                                gameOver = true;
                              }
                              if (lastValue == "X") {
                                lastValue = "O";
                              } else {
                                lastValue = "X";
                              }
                            });
                          }
                        },
                  child: Container(
                    height: Game.blockSize,
                    width: Game.blockSize,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16.0),
                        color: Colors.black45),
                    child: Center(
                      child: Text(
                        game.board![index],
                        style: (TextStyle(
                            color: game.board![index] == "X"
                                ? Colors.red.shade500
                                : Colors.blue.shade500,
                            fontSize: 64.0)),
                      ),
                    ),
                  ),
                );
              }),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
        ],
      ),
    );
  }

  _showResult(String resultado) {
    return showDialog(
        context: context,
        builder: (_) => AlertDialog(
              title: Center(
                  child: Text(
                resultado,
                style: const TextStyle(
                    fontSize: 28.0, fontWeight: FontWeight.bold),
              )),
              actions: [
                const SizedBox(
                  height: 20,
                ),
                Container(
                  decoration: BoxDecoration(
                      color: Colors.orange.shade900,
                      borderRadius: BorderRadius.circular(10)),
                  child: Center(
                    child: TextButton(
                      onPressed: () {
                        setState(() {
                          game.board = Game.initGameBoard();
                          lastValue = "X";
                          gameOver = false;
                          turno = 0;
                          resultado = "";
                          scoreBoard = [0, 0, 0, 0, 0, 0, 0, 0, 0];
                          Navigator.of(context).pop();
                        });
                      },
                      child: const Text(
                        'Novo Jogo',
                        style: TextStyle(fontSize: 18, color: Colors.white70),
                      ),
                    ),
                  ),
                ),
              ],
            ));
  }
}

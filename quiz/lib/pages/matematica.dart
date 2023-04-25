// ignore_for_file: prefer_final_fields

import 'package:flutter/material.dart';
import 'package:quiz/main.dart';

import '../data/listQ_math.dart';

class MathPage extends StatefulWidget {
  const MathPage({super.key});

  @override
  State<MathPage> createState() => _MathPageState();
}

class _MathPageState extends State<MathPage> {
  PageController? _controller = PageController(initialPage: 0);
  bool isPressed = false;
  Color correta = Colors.green;
  Color errada = Colors.red;
  Color btnColor = const Color(0xFF117eeb);
  int score = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF66B9B3),
      body: Padding(
        padding: const EdgeInsets.all(18.0),
        child: PageView.builder(
            physics: const NeverScrollableScrollPhysics(),
            controller: _controller,
            onPageChanged: (page) {
              setState(() {
                isPressed = false;
              });
            },
            itemCount: questionsMath.length,
            itemBuilder: (context, index) {
              return Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    width: double.infinity,
                    child: Text(
                      'Questão ${index + 1}/${questionsMath.length}',
                      style: const TextStyle(
                          fontSize: 28,
                          fontWeight: FontWeight.w300,
                          color: Colors.white),
                    ),
                  ),
                  const Divider(
                    color: Colors.white,
                    height: 8.0,
                    thickness: 1.5,
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                  Text(
                    questionsMath[index].pergunta.toString(),
                    style: const TextStyle(color: Colors.white, fontSize: 28),
                  ),
                  const SizedBox(
                    height: 35.0,
                  ),
                  for (int i = 0;
                      i < questionsMath[index].resposta!.length;
                      i++)
                    Container(
                      width: double.infinity,
                      margin: const EdgeInsets.only(bottom: 18),
                      child: MaterialButton(
                        shape: const StadiumBorder(),
                        color: isPressed
                            ? questionsMath[index]
                                    .resposta!
                                    .entries
                                    .toList()[i]
                                    .value
                                ? correta
                                : errada
                            : btnColor,
                        padding: const EdgeInsets.symmetric(vertical: 18),
                        onPressed: isPressed
                            ? () {}
                            : () {
                                setState(() {
                                  isPressed = true;
                                });
                                if (questionsMath[index]
                                    .resposta!
                                    .entries
                                    .toList()[i]
                                    .value) {
                                  score += 1;
                                }
                              },
                        child: Text(
                          questionsMath[index].resposta!.keys.toList()[i],
                          style: const TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                  const SizedBox(
                    height: 50.0,
                  ),
                  OutlinedButton(
                      onPressed: isPressed
                          ? index + 1 == questionsMath.length
                              ? () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              ResultScreen(score)));
                                }
                              : () {
                                  _controller!.nextPage(
                                      duration:
                                          const Duration(microseconds: 750),
                                      curve: Curves.bounceIn);
                                  setState(() {
                                    isPressed = false;
                                  });
                                }
                          : null,
                      child: Text(
                        index + 1 == questionsMath.length
                            ? 'Veja o resultado'
                            : 'Próxima página',
                        style: const TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.white),
                      )),
                ],
              );
            }),
      ),
    );
  }
}

class ResultScreen extends StatefulWidget {
  final int score;
  const ResultScreen(this.score, {super.key});

  @override
  State<ResultScreen> createState() => _ResultScreenState();
}

class _ResultScreenState extends State<ResultScreen> {
  @override
  Widget build(BuildContext context) {
    _showDialog() {
      return showDialog(
          context: context,
          builder: (BuildContext context) {
            return AlertDialog(
              actions: [
                Container(
                  decoration: const BoxDecoration(color: Colors.cyan),
                  child: TextButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const HomePage()));
                      },
                      child: const Text(
                        'Retornar a página principal.',
                        style: TextStyle(color: Colors.white),
                      )),
                ),
                Container(
                  decoration: const BoxDecoration(color: Colors.grey),
                  child: TextButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const MathPage()));
                      },
                      child: const Text(
                        'Refazer a lição atual.',
                        style: TextStyle(color: Colors.white),
                      )),
                ),
              ],
            );
          });
    }

    Color mainColor = const Color(0xFF252c4a);
    return Scaffold(
      backgroundColor: mainColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text(
              'Parabéns',
              style: TextStyle(
                  color: Colors.blue,
                  fontSize: 38.0,
                  fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 50.0,
            ),
            Text(
              '${widget.score}',
              style: const TextStyle(
                  color: Colors.white,
                  fontSize: 80.0,
                  fontWeight: FontWeight.bold),
            ),
            MaterialButton(
              onPressed: () {
                _showDialog();
              },
              color: Colors.orange,
              child: const Text(
                'Finalizar',
                style: TextStyle(fontSize: 20, color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

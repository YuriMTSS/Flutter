import 'package:flip_card/flip_card.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key, this.size = 12});
  final int size;
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<GlobalKey<FlipCardState>> cardStateKeys = [];
  List<bool> cardFlip = [];
  List<String> data = [
    '1',
    '1',
    '2',
    '2',
    '3',
    '3',
    '4',
    '4',
    '5',
    '5',
    '6',
    '6'
  ];

  int previousIndex = -1;
  bool flip = false;

  @override
  void initState() {
    for (var i = 0; i < widget.size; i++) {
      cardStateKeys.add(GlobalKey<FlipCardState>());
      cardFlip.add(true);
    }
    super.initState();
    data.shuffle();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Theme(
                data: ThemeData.dark(),
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: GridView.builder(
                    physics: const NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3,
                    ),
                    itemBuilder: (context, index) => GestureDetector(
                      onTap: () {
                        setState(() {});
                      },
                      child: FlipCard(
                        key: cardStateKeys[index],
                        onFlip: () {
                          if (!flip) {
                            flip = true;
                            previousIndex = index;
                          } else {
                            flip = false;
                            if (previousIndex != index) {
                              if (data[previousIndex] != data[index]) {
                                cardStateKeys[previousIndex]
                                    .currentState
                                    ?.toggleCard();
                                previousIndex = index;
                              } else {
                                cardFlip[previousIndex] = false;
                                cardFlip[index] = false;
                                if (cardFlip.every((t) => t == false)) {
                                  showResult();
                                }
                              }
                            }
                          }
                        },
                        direction: FlipDirection.HORIZONTAL,
                        flipOnTouch: cardFlip[index],
                        front: Container(
                          margin: const EdgeInsets.all(4.0),
                          color: Colors.deepOrange.withOpacity(0.3),
                        ),
                        back: Container(
                          margin: const EdgeInsets.all(4.0),
                          color: Colors.deepOrange,
                          child: Center(
                            child: Text(
                              data[index],
                              style: const TextStyle(
                                  fontSize: 30, fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      ),
                    ),
                    itemCount: data.length,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  showResult() {
    showDialog(
        context: context,
        barrierDismissible: false,
        builder: (context) => AlertDialog(
              title: const Text('Ganhou!'),
              actions: <Widget>[
                TextButton(
                    onPressed: () {
                      Navigator.of(context).pushReplacement(MaterialPageRoute(
                          builder: (context) => const HomePage()));
                    },
                    child: const Text('Proximo')),
              ],
            ));
  }
}

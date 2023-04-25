import 'dart:math';

class Game {
  static int score = 0;

  static List<String> choices = ["Pedra", "Papel", "Tesoura"];

  static String? randomChoice() {
    Random random = Random();
    int robotChoiceIndex = random.nextInt(3);
    return choices[robotChoiceIndex];
  }
}

class Choice {
  String? type = "";
  static var gameRule = {
    "Pedra": {
      "Pedra": "Empate",
      "Papel": "Você perdeu",
      "Tesoura": "Você ganhou"
    },
    "Papel": {
      "Pedra": "Você ganhou",
      "Papel": "Empate",
      "Tesoura": "Você Perdeu"
    },
    "Tesoura": {
      "Pedra": "Você perdeu",
      "Papel": "Você ganhou",
      "Tesoura": "Empate"
    },
  };
  Choice(this.type);
}

class Game {
  final String hiddenCard = 'assets/hidden.jpg';
  List<String>? gameImg;
  final List<String> card_list = [
    'assets/Macaco.jpg',
    'assets/Onca.jpg',
    'assets/Macaco.jpg',
    'assets/Peixe.jpg',
    'assets/Panda.jpg',
    'assets/Onca.jpg',
    'assets/Hipopotamo.jpg',
    'assets/Peixe.jpg',
    'assets/Zebra.jpg',
    'assets/Panda.jpg',
    'assets/Zebra.jpg',
    'assets/Hipopotamo.jpg',
  ];

  List<Map<int, String>> matchCheck = [];

  final int cardCount = 12;

  void initGame() {
    gameImg = List.generate(cardCount, (index) => hiddenCard);
  }
}

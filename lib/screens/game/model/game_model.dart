class GameModel {
  final List _gameNotation = [
    "-",
    "-",
    "-",
    "-",
    "-",
    "-",
    "-",
    "-",
    "-",
  ];

  void gameNotationChange(int gamePosition, String player) {
    _gameNotation[gamePosition] = player;
    print("deneme");
  }
}

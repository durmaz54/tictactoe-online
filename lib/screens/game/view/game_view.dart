import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:tictactoe/screens/game/view/game_painter.dart';
import 'package:tictactoe/screens/game/view_model/game_view_model.dart';

class GameView extends StatelessWidget {
  final gameViewSize;
  final _gameViewModel = GameViewModel();
  GameView(this.gameViewSize);
  @override
  Widget build(BuildContext context) {
    return Observer(builder: (_) {
      return Center(
          child: GestureDetector(
        onTapDown: (detailst) => _gameViewModel.tapSetGameNotation(
            detailst.localPosition, gameViewSize),
        child: CustomPaint(
            painter: GamePainter(
              _gameViewModel.gameNotation,
            ),
            size: Size(gameViewSize, gameViewSize)),
      ));
    });
  }
}

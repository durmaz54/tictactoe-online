import 'package:flutter/cupertino.dart';
import 'package:mobx/mobx.dart';
part 'game_view_model.g.dart';

class GameViewModel = _GameViewModelBase with _$GameViewModel;

abstract class _GameViewModelBase with Store {
  @observable
  var gameNotation = ObservableList<int>.of([0, 0, 1, 0, 0, 0, 0, 0, 0]);

  @observable
  var movePlace = 1;

  @action
  void art(int index) {
    gameNotation[index] = movePlace;
  }

  void tapSetGameNotation(Offset position, final gameViewSize) {
    if (position.dx > gameViewSize * 2 / 3) {
      if (position.dy > gameViewSize * 2 / 3) {
        art(8);
      }
    } else if (position.dx > gameViewSize / 3) {}
  }
}

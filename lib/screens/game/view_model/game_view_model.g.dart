// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'game_view_model.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$GameViewModel on _GameViewModelBase, Store {
  final _$gameNotationAtom = Atom(name: '_GameViewModelBase.gameNotation');

  @override
  ObservableList<int> get gameNotation {
    _$gameNotationAtom.reportRead();
    return super.gameNotation;
  }

  @override
  set gameNotation(ObservableList<int> value) {
    _$gameNotationAtom.reportWrite(value, super.gameNotation, () {
      super.gameNotation = value;
    });
  }

  final _$movePlaceAtom = Atom(name: '_GameViewModelBase.movePlace');

  @override
  int get movePlace {
    _$movePlaceAtom.reportRead();
    return super.movePlace;
  }

  @override
  set movePlace(int value) {
    _$movePlaceAtom.reportWrite(value, super.movePlace, () {
      super.movePlace = value;
    });
  }

  final _$_GameViewModelBaseActionController =
      ActionController(name: '_GameViewModelBase');

  @override
  void art(int index) {
    final _$actionInfo = _$_GameViewModelBaseActionController.startAction(
        name: '_GameViewModelBase.art');
    try {
      return super.art(index);
    } finally {
      _$_GameViewModelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
gameNotation: ${gameNotation},
movePlace: ${movePlace}
    ''';
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:tictactoe/screens/game/view/game_view.dart';
import 'package:tictactoe/screens/login/view_model/login_view_model.dart';

class LoginView extends StatelessWidget {
  final _viewModel = LoginViewModel();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('TicTacToe'),
      ),
      body: Observer(builder: (_) {
        return _viewModel.isLogin ? GameView(500) : newMethodLogin();
      }),
    );
  }

  Center newMethodLogin() {
    return Center(
        child: ElevatedButton(
      onPressed: () {
        _viewModel.loginChange();
      },
      child: Text("Anonim Connecting"),
    ));
  }
}

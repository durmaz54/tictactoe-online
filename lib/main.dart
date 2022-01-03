import 'package:flutter/material.dart';
import 'package:tictactoe/screens/login/view/login_view.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'TicTacToe',
      home: LoginView(),
    );
  }
}

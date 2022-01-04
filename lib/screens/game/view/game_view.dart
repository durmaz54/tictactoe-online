import 'package:flutter/material.dart';
import 'package:tictactoe/core/services/firebase_service.dart';

class GameView extends StatefulWidget {
  @override
  State<GameView> createState() => _GameViewState();
}

class _GameViewState extends State<GameView> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        FutureBuilder(
            future: FireBaseService().apiCall(),
            builder: (context, snapshot) {
              switch (snapshot.connectionState) {
                case ConnectionState.done:
                  return Text("${snapshot.data}");

                default:
                  return CircularProgressIndicator();
              }
            }),
        ElevatedButton(
            onPressed: () {
              setState(() {});
            },
            child: Text("tekrar et"))
      ],
    );
  }
}

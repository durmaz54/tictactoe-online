import 'dart:convert';
import 'package:http/http.dart' as http;

class FireBaseService {
  final url = Uri.parse(
      "https://tictactoe-7f646-default-rtdb.firebaseio.com/users.json");

  Future<List> apiCall() async {
    final response = await http.get(url);
    if (response.statusCode == 200) {
      final jsonModel = json.decode(response.body) as List;
      return jsonModel;
    } else {
      throw Exception(response.statusCode);
    }
  }
}

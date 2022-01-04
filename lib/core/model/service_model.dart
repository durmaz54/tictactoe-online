class ServiceModel {
  int? gameBool;
  List<int>? gameNotation;
  int? isMove;
  String? name;

  ServiceModel({this.gameBool, this.gameNotation, this.isMove, this.name});

  ServiceModel.fromJson(Map<String, dynamic> json) {
    gameBool = json['gameBool'];
    gameNotation = json['gameNotation'].cast<int>();
    isMove = json['isMove'];
    name = json['name'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['gameBool'] = this.gameBool;
    data['gameNotation'] = this.gameNotation;
    data['isMove'] = this.isMove;
    data['name'] = this.name;
    return data;
  }
}

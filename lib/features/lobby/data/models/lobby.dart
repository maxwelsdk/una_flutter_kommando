import 'package:kommando/core/consumidor/data/models/consumidor.dart';

class Lobby {
  String id;
  String descricao;
  String lobbyStatus;
  List<String> consumidorList;

  Lobby({this.id, this.descricao, this.lobbyStatus, this.consumidorList});

  Lobby.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    descricao = json['descricao'];
    lobbyStatus = json['lobbyStatus'];
    if (json['consumidorList'] != null) {
      consumidorList = new List<String>();
      json['consumidorList'].forEach((v) {
        consumidorList.add(v);
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['descricao'] = this.descricao;
    data['lobbyStatus'] = this.lobbyStatus;
    if (this.consumidorList != null) {
      data['consumidorList'] =
          this.consumidorList.map((v) => v).toList();
    }
    return data;
  }
}

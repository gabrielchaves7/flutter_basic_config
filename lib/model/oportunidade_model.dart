import 'package:tenis_certo/model/recomendacao_model.dart';

class OportunidadeModel {
  OportunidadeModel({this.recommendations,
    this.id,
    this.name,
    this.description,
    this.url,
    this.order});

  OportunidadeModel.fromJson(Map<String, dynamic> json) {
    if (json['recommendations'] != null) {
      recommendations = [];
      json['recommendations'].forEach((v) {
        recommendations!.add(new RecomendacaoModel.fromJson(v));
      });
    }
    id = json['id'];
    name = json['name'];
    description = json['description'];
    url = json['url'];
    order = json['order'];
  }

  List<RecomendacaoModel>? recommendations;
  int? id;
  String? name;
  String? description;
  String? url;
  int? order;
}
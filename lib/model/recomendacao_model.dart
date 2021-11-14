import 'package:tenis_certo/model/recomendacao_instrument_model.dart';

class RecomendacaoModel {
  RecomendacaoModel(
      {this.id,
        this.symbolID,
        this.side,
        this.isDayTrade,
        this.avaliable,
        this.goal,
        this.stop,
        this.details,
        this.market,
        this.instrument,
        this.category,
        this.duration,
        this.createdAt,
        this.suitability,
        this.riskModel});

  RecomendacaoModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    symbolID = json['symbolID'];
    side = json['side'];
    isDayTrade = json['isDayTrade'];
    avaliable = json['avaliable'];
    goal = json['goal'];
    stop = json['stop'];
    details = json['details'];
    market = json['market'];
    instrument = json['instrument'] != null
        ? RecomendacaoInstrumentModel.fromJson(json['instrument'])
        : null;
    category = json['category'];
    duration = json['duration'];
    createdAt = json['createdAt'];
    suitability = json['suitability'];
    riskModel = json['riskModel'];
  }

  int? id;
  String? symbolID;
  int? side;
  bool? isDayTrade;
  bool? avaliable;
  double? goal;
  double? stop;
  String? details;
  int? market;
  RecomendacaoInstrumentModel? instrument;
  String? category;
  String? duration;
  String? createdAt;
  int? suitability;
  int? riskModel;
}
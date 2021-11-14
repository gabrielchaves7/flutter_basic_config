import 'package:tenis_certo/model/stress_model.dart';

class RecomendacaoInstrumentModel {
  RecomendacaoInstrumentModel(
      {this.description,
        this.quoteFactor,
        this.unitPrice,
        this.standartLot,
        this.stress,
        this.logoPath,
        this.logoSquaredPath,
        this.typeMarket,
        this.active,
        this.variation,
        this.rangeMinimumPriceIncrements,
        this.brokerageFactor});

  RecomendacaoInstrumentModel.fromJson(Map<String, dynamic> json) {
    description = json['description'];
    quoteFactor = json['quoteFactor'];
    unitPrice = json['unitPrice'];
    standartLot = json['standartLot'];
    stress =
    json['stress'] != null ? StressModel.fromJson(json['stress']) : null;
    logoPath = json['logoPath'];
    logoSquaredPath = json['logoSquaredPath'];
    typeMarket = json['typeMarket'];
    active = json['active'];
    variation = json['variation'];
    rangeMinimumPriceIncrements = json['rangeMinimumPriceIncrements'];
    brokerageFactor = json['brokerageFactor'];
  }

  String? description;
  double? quoteFactor;
  double? unitPrice;
  double? standartLot;
  StressModel? stress;
  String? logoPath;
  String? logoSquaredPath;
  int? typeMarket;
  String? active;
  double? variation;
  String? rangeMinimumPriceIncrements;
  double? brokerageFactor;
}
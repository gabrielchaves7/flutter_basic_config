class StressModel {
  double? value;
  bool? isPtax;
  bool? composeNetEquity;
  double? dayTradeStrategyValue;
  double? dayTradeValue;

  StressModel(
      {this.value,
        this.isPtax,
        this.composeNetEquity,
        this.dayTradeStrategyValue,
        this.dayTradeValue});

  StressModel.fromJson(Map<String, dynamic> json) {
    value = json['value'];
    isPtax = json['isPtax'];
    composeNetEquity = json['composeNetEquity'];
    dayTradeStrategyValue = json['dayTradeStrategyValue'];
    dayTradeValue = json['dayTradeValue'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['value'] = this.value;
    data['isPtax'] = this.isPtax;
    data['composeNetEquity'] = this.composeNetEquity;
    data['dayTradeStrategyValue'] = this.dayTradeStrategyValue;
    data['dayTradeValue'] = this.dayTradeValue;
    return data;
  }
}
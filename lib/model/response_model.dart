import 'dart:core';
import 'oportunidade_model.dart';

class ResponseModel {
  List<OportunidadeModel>? value;
  List<String>? messages;
  bool? hasValue;
  bool? hasWarning;
  bool? hasAlerta;
  bool? hasError;
  bool? hasInfo;
  bool? ok;

  ResponseModel(
      {this.value,
        this.hasValue,
        this.hasWarning,
        this.hasAlerta,
        this.hasError,
        this.hasInfo,
        this.ok});

  ResponseModel.fromJson(Map<String, dynamic> json) {
    if (json['value'] != null) {
      value = [];
      json['value'].forEach((v) {
        value!.add(new OportunidadeModel.fromJson(v));
      });
    }
    hasValue = json['hasValue'];
    if (json['messages'] != null) {
      messages = [];
      json['messages'].forEach((v) {
        messages!.add(v);
      });
    }
    hasWarning = json['hasWarning'];
    hasAlerta = json['hasAlerta'];
    hasError = json['hasError'];
    hasInfo = json['hasInfo'];
    ok = json['ok'];
  }
}
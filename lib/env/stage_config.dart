import 'base_config.dart';

class StageConfig implements BaseConfig {
  String get apiHost => "localhost";

  bool get reportErrors => false;

  bool get trackEvents => false;

  bool get useHttps => false;
}

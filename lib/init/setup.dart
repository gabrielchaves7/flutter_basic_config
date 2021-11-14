
import 'package:get_it/get_it.dart';
import 'package:http/http.dart';
import 'package:tenis_certo/bloc/oportunidades_bloc.dart';
import 'package:tenis_certo/env/environment.dart';
import 'package:http/http.dart' as http;
import 'package:tenis_certo/repository/oportunidades_repository.dart';

GetIt getIt = GetIt.instance;

void initSetup(){
  const String environment = String.fromEnvironment(
    'ENVIRONMENT',
    defaultValue: Environment.DEV,
  );
  Environment().initConfig(environment);

  getIt.registerSingleton<Client>(http.Client(),
      signalsReady: true);

  getIt.registerSingleton<OportunidadesRepository>(OportunidadesRepository(getIt.get<Client>()),
      signalsReady: true);

  getIt.registerSingleton<OportunidadesCubit>(OportunidadesCubit(getIt.get<OportunidadesRepository>()),
      signalsReady: true);
}
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_remote_config/firebase_remote_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:tenis_certo/pages/home_page.dart';
import 'package:tenis_certo/state/counter_cubit.dart';

import 'env/environment.dart';

void setup() {
  const String environment = String.fromEnvironment(
    'ENVIRONMENT',
    defaultValue: Environment.DEV,
  );
  Environment().initConfig(environment);

  GetIt.I.registerSingleton<CounterCubit>(CounterCubit());
}

void main() {
  setup();
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const App());
}

Future<void> initializeFlutterFire() async {
  await Firebase.initializeApp();
  RemoteConfig remoteConfig = RemoteConfig.instance;
  await remoteConfig.fetchAndActivate();
  GetIt.I.registerSingleton<RemoteConfig>(remoteConfig);
}

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: FutureBuilder<void>(
        future:
            initializeFlutterFire(), // a previously-obtained Future<String> or null
        builder: (BuildContext context, AsyncSnapshot<void> snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            return BlocProvider(
              create: (_) => GetIt.I<CounterCubit>(),
              child: HomePage(),
            );
          } else if (snapshot.hasError) {
            return Text(snapshot.error.toString());
          }

          return const Center(
            child: CircularProgressIndicator(),
          );
        },
      ),
    );
  }
}

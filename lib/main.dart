import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:tenis_certo/pages/home_page.dart';
import 'package:tenis_certo/state/counter_cubit.dart';

void setup() {
  GetIt.I.registerSingleton<CounterCubit>(CounterCubit());
}

void main() {
  setup();
  runApp(const App());
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
      home: HomePage(),
    );
  }
}

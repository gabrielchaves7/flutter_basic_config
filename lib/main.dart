import 'package:flutter/material.dart';
import 'package:tenis_certo/pages/home_page.dart';

void setup() {
  //GetIt.I.registerSingleton<CounterCubit>(CounterCubit());
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

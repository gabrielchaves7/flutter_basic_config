import 'package:firebase_remote_config/firebase_remote_config.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:tenis_certo/state/counter_cubit.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page'),
      ),
      body: BlocBuilder<CounterCubit, int>(
        builder: (context, count) => Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const Text(
                'You have pushed the button this many times:',
              ),
              Text(
                '$count',
                style: Theme.of(context).textTheme.headline4,
              ),
              Text(
                  'Welcome ${GetIt.I<RemoteConfig>().getString('welcome_message')}')
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => GetIt.I<CounterCubit>().increment(),
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}

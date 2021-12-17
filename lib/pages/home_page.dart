import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:tenis_certo/state/counter_cubit.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);

  CounterCubit counterCubit = GetIt.I<CounterCubit>();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => counterCubit,
      child: BlocBuilder<CounterCubit, int>(
        builder: (context, state) {
          return Scaffold(
            appBar: AppBar(
              title: const Text('Home Page'),
            ),
            body: Center(
              child: Text('Clicked: $state'),
            ),
            floatingActionButton: FloatingActionButton(
              onPressed: () {
                counterCubit.increment();
              },
            ),
          );
        },
      ),
    );
  }
}

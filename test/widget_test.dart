import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:get_it/get_it.dart';
import 'package:tenis_certo/pages/home_page.dart';
import 'package:tenis_certo/state/counter_cubit.dart';

void main() {
  //run before each test
  setUp(() {
    final CounterCubit counterCubit = CounterCubit();
    GetIt.I.registerSingleton<CounterCubit>(counterCubit);
  });

  //run after each test
  tearDown(() {
    GetIt.I.unregister<CounterCubit>();
  });

  Future<void> _initWidget(WidgetTester tester) async {
    await tester.pumpWidget(
      MaterialApp(
        title: 'Flutter Demo',
        home: HomePage(),
      ),
    );
  }

  testWidgets('Should show text and floatingActionButton',
      (WidgetTester tester) async {
    await _initWidget(tester);

    expect(find.byType(FloatingActionButton), findsOneWidget);
    expect(find.text('Clicked: 1'), findsOneWidget);
  });

  testWidgets(
      'When floatingActionButton is clicked should call CounterCubit.increment',
      (WidgetTester tester) async {
    await _initWidget(tester);

    expect(find.byType(FloatingActionButton), findsOneWidget);
    expect(find.text('Clicked: 1'), findsOneWidget);

    await tester.tap(find.byType(FloatingActionButton));
    await tester.pumpAndSettle();

    expect(find.text('Clicked: 2'), findsOneWidget);
  });
}

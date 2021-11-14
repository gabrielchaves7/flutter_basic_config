import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tenis_certo/bloc/oportunidades_bloc.dart';
import 'init/setup.dart';
import 'model/oportunidade_model.dart';

void main() {
  initSetup();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("arroz"),
      ),
      body: BlocProvider(
        create: (_) => getIt.get<OportunidadesCubit>(),
        child: Container(
          height: 200,
          child: BlocBuilder<OportunidadesCubit, List<OportunidadeModel>?>(
            builder: (context, oportunidades) {
              if (oportunidades!.isEmpty) {
                return const Center(
                  child: CircularProgressIndicator(),
                );
              } else {
                return GridView.builder(
                  primary: false,
                  scrollDirection: Axis.horizontal,
                  padding: EdgeInsets.all(20),
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisSpacing: 16,
                    mainAxisSpacing: 8,
                    crossAxisCount: 2,
                    childAspectRatio: 0.3,
                  ),
                  itemCount: oportunidades.length,
                  itemBuilder: (BuildContext context, int index) {
                    final oportunidade = oportunidades[index];
                    return SizedBox(
                      child: Row(
                        children: [
                          Container(
                            width: 72,
                            height: 72,
                            color: Colors.blue,
                          ),
                          Expanded(
                            child: ListTile(
                              title: Text('${oportunidade.name}'),
                              subtitle: Text(
                                  '${oportunidade.recommendations!.length} ativos'),
                            ),
                          )
                        ],
                      ),
                    );
                  },
                );
              }
            },
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => {getIt.get<OportunidadesCubit>().fetchOportunidades()},
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

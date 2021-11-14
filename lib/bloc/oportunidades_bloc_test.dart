import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:tenis_certo/repository/oportunidades_repository.dart';

import 'oportunidades_bloc.dart';
import 'oportunidades_bloc_test.mocks.dart';

@GenerateMocks([OportunidadesRepository])
void main() {
  group('fetchAlbum', () {
    test('bloc should call oportunidadesRepository.fetch when fetchOportunidades is called', () async {
      final mockedRepository = MockOportunidadesRepository();
      OportunidadesCubit oportunidadesCubit = OportunidadesCubit(mockedRepository);

      when(mockedRepository.fetch())
          .thenAnswer((_) async =>
          []);

      await oportunidadesCubit.fetchOportunidades();

      verify(mockedRepository.fetch());
    });
  });
}
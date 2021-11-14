

import 'package:bloc/bloc.dart';
import 'package:tenis_certo/model/oportunidade_model.dart';
import 'package:tenis_certo/repository/oportunidades_repository.dart';

class OportunidadesCubit extends Cubit<List<OportunidadeModel>> {
  final OportunidadesRepository _oportunidadesRepository;

  OportunidadesCubit(this._oportunidadesRepository) : super([]);

  Future<void> fetchOportunidades() async {
    List<OportunidadeModel>? oportunidades = await _oportunidadesRepository.fetch();
    emit(oportunidades!);
  }
}






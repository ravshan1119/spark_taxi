import 'dart:async';

import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:spark_taxi/src/data/datasources/remote/api_repository.dart';

import '../../../domain/models/get_data_model.dart';

part 'get_data_event.dart';

part 'get_data_state.dart';

class GetDataBloc extends Bloc<GetDataEvent, GetDataState> {
  GetDataBloc(this.apiRepository) : super(GetDataInitial()) {
    on<GetDataEvent>(_getData);
  }

  final ApiRepository apiRepository;

  Future<void> _getData(GetDataEvent event, Emitter<GetDataState> emit) async {
    emit(GetDataLoading());
    try {
      final items = await apiRepository.getData();
      emit(GetDataSuccess(getDataProducts: items.data));
    } catch (_) {
      emit(GetDataError(errorText: _.toString()));
    }
  }
}

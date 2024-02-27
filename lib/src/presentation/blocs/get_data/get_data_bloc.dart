import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'get_data_event.dart';
part 'get_data_state.dart';

class GetDataBloc extends Bloc<GetDataEvent, GetDataState> {
  GetDataBloc() : super(GetDataInitial()) {
    on<GetDataEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}

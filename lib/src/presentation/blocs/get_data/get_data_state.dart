part of 'get_data_bloc.dart';

abstract class GetDataState extends Equatable {
  const GetDataState();
}

class GetDataInitial extends GetDataState {
  @override
  List<Object> get props => [];
}

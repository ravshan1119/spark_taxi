part of 'get_data_bloc.dart';

abstract class GetDataState extends Equatable {
  const GetDataState();
}

class GetDataInitial extends GetDataState {
  @override
  List<Object> get props => [];
}

class GetDataLoading extends GetDataState {
  @override
  List<Object> get props => [];
}

class GetDataError extends GetDataState {
  final String errorText;

  const GetDataError({required this.errorText});

  @override
  List<Object> get props => [];
}

class GetDataSuccess extends GetDataState {
  const GetDataSuccess({required this.getDataProducts});

  final List<GetDataModel> getDataProducts;

  @override
  List<Object> get props => [];
}

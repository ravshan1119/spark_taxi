part of 'get_data_bloc.dart';

abstract class GetDataEvent extends Equatable {
  const GetDataEvent();
}

class GetDataEventProduct extends GetDataEvent {
  @override
  List<Object?> get props => [];
}

part of 'all_data_bloc.dart';

abstract class all_data_event extends Equatable{
  const all_data_event();

  @override
  List<Object> get props=>[];
}

class   Getalldata extends all_data_event{}
class Refreshalldata extends all_data_event{}
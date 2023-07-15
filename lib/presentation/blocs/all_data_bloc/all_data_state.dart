// ignore_for_file: must_be_immutable

part of 'all_data_bloc.dart';

abstract class all_data_state extends Equatable{
  const all_data_state();

  @override
  List<Object> get props=>[];
}
class initialize extends all_data_state{}
class Getalldatastate extends all_data_state{
 all_world_entity posts;
  Getalldatastate({required this.posts});
 @override
 List<Object> get props=>[posts];
}
class Loading extends all_data_state{}
class   Error extends all_data_state{
  String error;
   Error({required this.error});
  @override
  List<Object> get props=>[error];
}

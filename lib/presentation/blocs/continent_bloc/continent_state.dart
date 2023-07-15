// ignore_for_file: must_be_immutable
part of 'continent_bloc.dart';

abstract class continent_state extends Equatable{
  const continent_state();

  @override
  List<Object> get props=>[];
}
class initialize extends continent_state{}
class Waiting extends continent_state{}
class Getalldatastate extends continent_state{
  continents_entity posts;
  Getalldatastate({required this.posts});
  @override
  List<Object> get props=>[posts];
}
class Loading extends continent_state{}
class   Error extends continent_state{
  String error;
  Error({required this.error});
  @override
  List<Object> get props=>[error];
}

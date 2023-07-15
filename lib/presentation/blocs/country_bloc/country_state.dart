// ignore_for_file: must_be_immutable
part of 'country_bloc.dart';

abstract class country_state extends Equatable{
  const country_state();

  @override
  List<Object> get props=>[];
}
class initialize extends country_state{}
class Waiting extends country_state{}
class Getalldatastate extends country_state{
  countries_entity posts;
  Getalldatastate({required this.posts});
  @override
  List<Object> get props=>[posts];
}
class Loading extends country_state{}
class   Error extends country_state{
  String error;
  Error({required this.error});
  @override
  List<Object> get props=>[error];
}

part of 'continent_bloc.dart';

abstract class continent_event extends Equatable{
  const continent_event();
  @override
  List<Object> get props=>[];
}
class   Wait extends continent_event{}
class   Getalldata extends continent_event{
  final String continent;
  Getalldata(this.continent);
  @override
  List<Object> get props=>[continent];
}
class Refreshalldata extends continent_event{
  final String continent;
  Refreshalldata(this.continent);
  @override
  List<Object> get props=>[continent];
}
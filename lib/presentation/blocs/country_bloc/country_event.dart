part of 'country_bloc.dart';

abstract class country_event extends Equatable{
  const country_event();
  @override
  List<Object> get props=>[];
}
class   Wait extends country_event{}
class   Getalldata extends country_event{
  final String country;
  Getalldata(this.country);
  @override
  List<Object> get props=>[country];
}
class Refreshalldata extends country_event{
  final String country;
  Refreshalldata(this.country);
  @override
  List<Object> get props=>[country];
}
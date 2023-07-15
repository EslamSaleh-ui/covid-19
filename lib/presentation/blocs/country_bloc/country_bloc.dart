// country_bloc.dart
import 'package:covid_19/core/errors/failures/failures.dart';
import 'package:covid_19/domain/entites/countries_entity.dart';
import 'package:covid_19/domain/usecases/get_country_usecase.dart';
import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
part 'country_state.dart';
part 'country_event.dart';

class country_bloc extends Bloc<country_event,country_state>{
  final get_country_usecase getter;
  country_bloc( {required this.getter}) : super(initialize()) {
    on<country_event>((event, emit) async {
      if(event is Wait)
      {emit(Waiting());}
      else  if (event is Refreshalldata)
      {    emit(Loading());
      final _either=await getter.execute(event.country);
      emit(_mapdataorfail(_either));}
      else if(event is Getalldata)
      { emit(Loading());
      final _either=await getter.execute(event.country);
      emit(_mapdataorfail(_either));
      }
    });
  }

  country_state _mapdataorfail( Either<Failure,countries_entity> either)
  {
    return either.fold((l) => Error(error: _failuremessage(l)), (r) => Getalldatastate( posts: r));
  }

  String _failuremessage(Failure fail)
  {
    switch(fail.runtimeType) {
      case ServerFailure:
        return 'Server error';
      case OfflineFailure:
        return 'You are offline check your internet';
      default:
        return 'Unexpected error, please wait and try again later';
    }
  }
}
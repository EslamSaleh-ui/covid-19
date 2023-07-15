import 'package:covid_19/core/errors/failures/failures.dart';
import 'package:covid_19/domain/usecases/get_continent_usecase.dart';
import 'package:dartz/dartz.dart';
import 'package:covid_19/domain/entites/continents_entity.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
part 'continent_state.dart';
part 'continent_event.dart';

class continents_bloc extends Bloc<continent_event,continent_state>{
  final get_continent_usecase getter;
  continents_bloc( {required this.getter}) : super(initialize()) {
    on<continent_event>((event, emit) async {
     if(event is Wait)
       {emit(Waiting());}
    else  if (event is Refreshalldata)
      {    emit(Loading());
      final _either=await getter.execute(event.continent);
      emit(_mapdataorfail(_either));}
      else if(event is Getalldata)
      { emit(Loading());
      final _either=await getter.execute(event.continent);
      emit(_mapdataorfail(_either));
      }
    });
  }

  continent_state _mapdataorfail( Either<Failure,continents_entity> either)
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
import 'package:covid_19/core/errors/failures/failures.dart';
import 'package:dartz/dartz.dart';
import 'package:covid_19/domain/entites/all_world_entity.dart';
import 'package:covid_19/domain/usecases/get_all_usecase.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
part 'all_data_event.dart';
part 'all_data_state.dart';

class alldata extends Bloc<all_data_event,all_data_state>{
  final get_all_usecase getter;
  alldata({required this.getter}) : super(initialize()) {
    on<all_data_event>((event, emit) async {
      if (event is Refreshalldata)
    {    emit(Loading());
    final _either=await getter.execute();
    emit(_mapdataorfail(_either));}
      else if(event is Getalldata)
        { emit(Loading());
        final _either=await getter.execute();
        emit(_mapdataorfail(_either));
        }
    });
  }

 all_data_state _mapdataorfail( Either<Failure,all_world_entity> either)
  {
   return either.fold((l) => Error(error: _failuremessage(l)), (r) => Getalldatastate(posts:r ));
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
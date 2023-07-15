import 'package:covid_19/core/errors/failures/failures.dart';
import 'package:covid_19/domain/entites/all_world_entity.dart';
import 'package:dartz/dartz.dart';
import 'package:covid_19/domain/repositories/get_data.dart';

class get_all_usecase{
  final get_data get_all_world_data;
  const get_all_usecase({required this.get_all_world_data});

  Future<Either<Failure,all_world_entity>> execute() async=>
      await get_all_world_data.get_all_data();
}
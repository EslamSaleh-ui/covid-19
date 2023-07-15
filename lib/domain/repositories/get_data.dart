import 'package:covid_19/core/errors/failures/failures.dart';
import 'package:covid_19/domain/entites/all_world_entity.dart';
import 'package:dartz/dartz.dart';

abstract class get_data{
  Future<Either<Failure,all_world_entity>> get_all_data();}
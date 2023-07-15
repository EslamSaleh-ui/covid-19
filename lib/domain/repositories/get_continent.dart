import 'package:covid_19/core/errors/failures/failures.dart';
import 'package:covid_19/domain/entites/continents_entity.dart';
import 'package:dartz/dartz.dart';

abstract class get_continent{
  Future<Either<Failure,continents_entity>> get_continents_data(String continent);}
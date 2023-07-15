import 'package:covid_19/core/errors/failures/failures.dart';
import 'package:covid_19/domain/entites/countries_entity.dart';
import 'package:dartz/dartz.dart';

abstract class get_country{
  Future<Either<Failure,countries_entity>> get_countries_data(String country);}
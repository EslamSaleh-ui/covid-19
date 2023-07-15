import 'package:covid_19/core/errors/failures/failures.dart';
import 'package:covid_19/domain/entites/countries_entity.dart';
import 'package:covid_19/domain/repositories/get_country.dart';
import 'package:dartz/dartz.dart';

class get_country_usecase{
  final get_country get_country_data;
  const get_country_usecase({required this.get_country_data});

  Future<Either<Failure,countries_entity>> execute(String country) async=>
      await get_country_data.get_countries_data(country);
}
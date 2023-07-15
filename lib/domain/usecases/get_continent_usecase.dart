import 'package:covid_19/core/errors/failures/failures.dart';
import 'package:covid_19/domain/entites/continents_entity.dart';
import 'package:covid_19/domain/repositories/get_continent.dart';
import 'package:dartz/dartz.dart';

class get_continent_usecase{
  final get_continent get_continent_data;
  const get_continent_usecase({required this.get_continent_data});

  Future<Either<Failure,continents_entity>> execute(String continent) async=>
      await get_continent_data.get_continents_data(continent);
}
import 'package:covid_19/core/errors/exceptions/exceptions.dart';
import 'package:covid_19/core/errors/failures/failures.dart';
import 'package:covid_19/core/network/network.dart';
import 'package:covid_19/data/datasource/get_country_posts.dart';
import 'package:covid_19/domain/entites/countries_entity.dart';
import 'package:covid_19/domain/repositories/get_country.dart';
import 'package:dartz/dartz.dart';

class get_country_imp implements get_country{
  final  Network networkinfo;
  final get_country_posts get_data;

  const get_country_imp({required this.get_data, required this.networkinfo});

  @override
  Future<Either<Failure,countries_entity>> get_countries_data(String country) async{
    if(await networkinfo.Network_Connect())
    {try{
    final result=await get_data.fetch_data(country);
    return Right(result);}
    on ServerException{
    return Left(ServerFailure());
    }}
    else
    return Left(OfflineFailure());
  }
}
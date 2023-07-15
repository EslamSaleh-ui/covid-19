import 'package:covid_19/core/errors/exceptions/exceptions.dart';
import 'package:covid_19/core/errors/failures/failures.dart';
import 'package:covid_19/core/network/network.dart';
import 'package:covid_19/data/datasource/get_continent_posts.dart';
import 'package:covid_19/domain/entites/continents_entity.dart';
import 'package:covid_19/domain/repositories/get_continent.dart';
import 'package:dartz/dartz.dart';

class get_continent_imp implements get_continent{
  final  Network networkinfo;
  final get_continent_data get_data;

  const get_continent_imp({required this.get_data, required this.networkinfo});

  @override
  Future<Either<Failure, continents_entity>> get_continents_data(String continent) async{
    if(await networkinfo.Network_Connect())
    {try{
    final result=await get_data.fetch_data(continent);
    return Right(result);}
    on ServerException{
    return Left(ServerFailure());
    }}
    else
    return Left(OfflineFailure());
  }
}

import 'package:covid_19/core/errors/exceptions/exceptions.dart';
import 'package:covid_19/core/errors/failures/failures.dart';
import 'package:covid_19/core/network/network.dart';
import 'package:covid_19/data/datasource/get_data_posts.dart';
import 'package:covid_19/domain/entites/all_world_entity.dart';
import 'package:covid_19/domain/repositories/get_data.dart';
import 'package:dartz/dartz.dart';

class get_data_imp implements get_data{
  final  Network networkinfo;
  final get_data_posts get_data;

  const get_data_imp({required this.get_data, required this.networkinfo});

  @override
  Future<Either<Failure, all_world_entity>> get_all_data() async {
    if(await networkinfo.Network_Connect())
    {try{
      final result=await get_data.fetch_data();
      return Right(result);}
    on ServerException{
      return Left(ServerFailure());
    }}
    else
      return Left(OfflineFailure());
  }
}
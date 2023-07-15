import 'package:covid_19/core/network/network.dart';
import 'package:covid_19/data/datasource/get_continent_posts.dart';
import 'package:covid_19/data/datasource/get_country_posts.dart';
import 'package:covid_19/data/datasource/get_data_posts.dart';
import 'package:covid_19/data/repository/get_continent_imp.dart';
import 'package:covid_19/data/repository/get_country_imp.dart';
import 'package:covid_19/data/repository/get_data_imp.dart';
import 'package:covid_19/domain/repositories/get_continent.dart';
import 'package:covid_19/domain/repositories/get_country.dart';
import 'package:covid_19/domain/repositories/get_data.dart';
import 'package:covid_19/domain/usecases/get_all_usecase.dart';
import 'package:covid_19/domain/usecases/get_continent_usecase.dart';
import 'package:covid_19/domain/usecases/get_country_usecase.dart';
import 'package:covid_19/presentation/blocs/all_data_bloc/all_data_bloc.dart';
import 'package:covid_19/presentation/blocs/continent_bloc/continent_bloc.dart';
import 'package:covid_19/presentation/blocs/country_bloc/country_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';

final di=GetIt.instance;

Future<void> dependence()async{
  di.registerFactory(() => alldata(getter: di()));
  di.registerFactory(() => continents_bloc(getter: di()));
  di.registerFactory(() => country_bloc(getter: di()));
  di.registerLazySingleton(() => get_all_usecase(get_all_world_data: di()));
  di.registerLazySingleton(() => get_continent_usecase(get_continent_data: di()));
  di.registerLazySingleton(() => get_country_usecase(get_country_data: di()));
  di.registerLazySingleton<get_data>(() => get_data_imp(get_data: di(), networkinfo: di()));
  di.registerLazySingleton<get_continent>(() =>   get_continent_imp(get_data: di(), networkinfo: di()));
  di.registerLazySingleton<get_country>(() =>   get_country_imp(get_data: di(), networkinfo: di()));
  di.registerLazySingleton<get_data_posts>(() =>get_data_posts() );
  di.registerLazySingleton<get_continent_data>(() =>get_continent_data() );
  di.registerLazySingleton<get_country_posts>(() =>get_country_posts() );
  di.registerLazySingleton(() => Network(di()));
di.registerLazySingleton(() => InternetConnectionChecker());
}
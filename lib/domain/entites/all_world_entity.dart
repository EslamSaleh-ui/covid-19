import 'package:equatable/equatable.dart';

class all_world_entity extends Equatable{

  final  num cases,todayCases,
      deaths,todayDeaths,
      recovered,todayRecovered,
      active, casesPerOneMillion,
      deathsPerOneMillion,tests,
      testsPerOneMillion,activePerOneMillion,
     recoveredPerOneMillion,affectedCountries ;

 const all_world_entity(this.cases, this.todayCases, this.deaths, this.todayDeaths,
     this.recovered, this.todayRecovered, this.active, this.casesPerOneMillion,
     this.deathsPerOneMillion, this.tests, this.testsPerOneMillion, this.activePerOneMillion,
     this.recoveredPerOneMillion, this.affectedCountries);

  @override
  List<Object?> get props => [cases, todayCases, deaths, todayDeaths,
  recovered, todayRecovered, active, casesPerOneMillion,
  deathsPerOneMillion, tests, testsPerOneMillion, activePerOneMillion,
  recoveredPerOneMillion, affectedCountries];
}
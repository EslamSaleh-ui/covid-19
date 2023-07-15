import 'package:equatable/equatable.dart';

class countries_entity extends Equatable{

  final num cases,todayCases,deaths,todayDeaths,recovered,todayRecovered,active,
      casesPerOneMillion,deathsPerOneMillion,tests,testsPerOneMillion,activePerOneMillion,
      recoveredPerOneMillion ;
  final String country,continent,flag;

  const countries_entity(this.cases, this.todayCases, this.deaths, this.todayDeaths,
      this.recovered, this.todayRecovered, this.active, this.casesPerOneMillion,
      this.deathsPerOneMillion, this.tests, this.testsPerOneMillion, this.activePerOneMillion,
      this.recoveredPerOneMillion, this.country,this.continent,this.flag);

  @override
  List<Object?> get props => [cases, todayCases, deaths, todayDeaths,
    recovered, todayRecovered, active, casesPerOneMillion,
    deathsPerOneMillion, tests, testsPerOneMillion, activePerOneMillion,
    recoveredPerOneMillion,country ,continent,flag];
}
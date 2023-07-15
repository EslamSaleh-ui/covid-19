

import 'package:covid_19/domain/entites/countries_entity.dart';

class countries_model extends countries_entity{
  final num cases,todayCases,deaths,todayDeaths,recovered,todayRecovered,active,
      casesPerOneMillion,deathsPerOneMillion,tests,testsPerOneMillion,activePerOneMillion,
      recoveredPerOneMillion ;
  final String country,continent,flag;

  countries_model({required this.country,required this.continent,required this.flag,  required this.todayCases,  required this.deaths, required this.todayDeaths,
    required this.recovered, required this.todayRecovered, required this.active, required this.casesPerOneMillion,
    required this.deathsPerOneMillion, required this.tests, required this.testsPerOneMillion,
    required this.activePerOneMillion, required this.recoveredPerOneMillion,
    required this.cases})
      : super(cases,todayCases,deaths,todayDeaths,recovered,todayRecovered,active,
      casesPerOneMillion,deathsPerOneMillion,tests,testsPerOneMillion,activePerOneMillion,
      recoveredPerOneMillion , country,continent,flag) ;

  factory countries_model.fromJson(Map<String,dynamic> data)
  {return countries_model(cases:data['cases'],todayCases:data['todayCases'],deaths:data['deaths'],
      todayDeaths:data['todayDeaths'],
      recovered:data['recovered'],todayRecovered:data['todayRecovered'],
      active:data['active'], casesPerOneMillion:data['casesPerOneMillion'],
      deathsPerOneMillion:data['deathsPerOneMillion'],tests:data['tests'],testsPerOneMillion:data['testsPerOneMillion'],activePerOneMillion:data['activePerOneMillion'],
      recoveredPerOneMillion :data['recoveredPerOneMillion'],country:data['country'],continent:data['continent'],flag:data['countryInfo']['flag']);}

  Map<String,dynamic> toJson()=>{'cases':cases,'todayCases':todayCases,'deaths':deaths,
    'todayDeaths':todayDeaths, 'recovered':recovered,'todayRecovered':todayRecovered,
    'active':active, 'casesPerOneMillion':casesPerOneMillion,
    'deathsPerOneMillion':deathsPerOneMillion,'tests':tests,'testsPerOneMillion':testsPerOneMillion,'activePerOneMillion':activePerOneMillion,
     'recoveredPerOneMillion':recoveredPerOneMillion,'country':country,'continent':continent,'flag':flag};
}
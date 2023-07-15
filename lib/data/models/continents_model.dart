
import 'package:covid_19/domain/entites/continents_entity.dart';

class continents_model extends continents_entity{
  final num cases,todayCases,deaths,todayDeaths,recovered,todayRecovered,active,
      casesPerOneMillion,deathsPerOneMillion,tests,testsPerOneMillion,activePerOneMillion,
      recoveredPerOneMillion ;
  final List<dynamic> countries;

  continents_model( {required this.todayCases,  required this.deaths, required this.todayDeaths,
    required this.recovered, required this.todayRecovered, required this.active, required this.casesPerOneMillion,
    required this.deathsPerOneMillion, required this.tests, required this.testsPerOneMillion,
    required this.activePerOneMillion, required this.recoveredPerOneMillion,
    required this.cases,required this.countries})
      : super( cases , todayCases,   deaths,
      todayDeaths,   recovered,   todayRecovered,
      active,   casesPerOneMillion, deathsPerOneMillion,  tests,   testsPerOneMillion,
      activePerOneMillion,   recoveredPerOneMillion,countries) ;

  factory continents_model.fromJson(Map<String,dynamic> data)
  {return continents_model(cases:data['cases'] , todayCases:data['todayCases'],   deaths:data['deaths'],
  todayDeaths:data['todayDeaths'],   recovered:data['recovered'],   todayRecovered:data['todayRecovered'],
  active:data['active'],   casesPerOneMillion:data['casesPerOneMillion'], deathsPerOneMillion:data['deathsPerOneMillion'],
  tests:data['tests'],   testsPerOneMillion:data['testsPerOneMillion'],
  activePerOneMillion:data['activePerOneMillion'],   recoveredPerOneMillion:data['recoveredPerOneMillion'],
      countries: data['countries']);}

  Map<String,dynamic> toJson()=>{'cases':cases ,'todayCases': todayCases,'deaths':deaths,
    'todayDeaths':todayDeaths, 'recovered':  recovered, 'todayRecovered':  todayRecovered,
    'active':active, 'casesPerOneMillion':  casesPerOneMillion,
    'deathsPerOneMillion':deathsPerOneMillion,'tests':  tests, 'testsPerOneMillion':  testsPerOneMillion,
    'activePerOneMillion':activePerOneMillion,
    'recoveredPerOneMillion':recoveredPerOneMillion,
   'countries':countries};
}
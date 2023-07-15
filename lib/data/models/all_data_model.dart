import 'package:covid_19/domain/entites/all_world_entity.dart';

class all_data_model extends all_world_entity{
  final  num cases,todayCases,
      deaths,todayDeaths,
      recovered,todayRecovered,
      active, casesPerOneMillion,
      deathsPerOneMillion,tests,
      testsPerOneMillion,activePerOneMillion,
      recoveredPerOneMillion,affectedCountries;

  all_data_model({required this.todayCases,  required this.deaths, required this.todayDeaths,
      required this.recovered, required this.todayRecovered, required this.active, required this.casesPerOneMillion,
      required this.deathsPerOneMillion, required this.tests, required this.testsPerOneMillion,
    required this.activePerOneMillion, required this.recoveredPerOneMillion,
  required this.cases,Countries,required this.affectedCountries})
      : super( cases , todayCases,   deaths,
       todayDeaths,   recovered,   todayRecovered,
       active,   casesPerOneMillion, deathsPerOneMillion,  tests,   testsPerOneMillion,
       activePerOneMillion,   recoveredPerOneMillion,affectedCountries) ;

 factory all_data_model.fromJson(Map<String,dynamic> data)
   {return all_data_model(cases:data['cases'], affectedCountries: data['affectedCountries'],
       todayCases: data['todayCases'], active: data['active'],
       deaths: data['deaths'], todayDeaths: data['todayDeaths'],
       recovered: data['recovered'],casesPerOneMillion:data['casesPerOneMillion'],
       deathsPerOneMillion:data['deathsPerOneMillion'],tests:data['tests'],
       testsPerOneMillion:data['testsPerOneMillion'],activePerOneMillion:data['activePerOneMillion'],
       recoveredPerOneMillion:data['recoveredPerOneMillion'], todayRecovered: data['todayRecovered']);}

  Map<String,dynamic> toJson()=>{'cases':cases,'affectedCountries':affectedCountries,
    'todayCases':todayCases,'active':active,
    'deaths':deaths,'todayDeaths':todayDeaths,
   'recovered':recovered,'casesPerOneMillion':casesPerOneMillion,
   'deathsPerOneMillion':deathsPerOneMillion,'tests':tests,
    'testsPerOneMillion':testsPerOneMillion,'activePerOneMillion':activePerOneMillion,
      'recoveredPerOneMillion':recoveredPerOneMillion,'todayRecovered':todayRecovered};
}
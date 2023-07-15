import 'dart:convert';
import 'package:covid_19/core/errors/exceptions/exceptions.dart';
import 'package:covid_19/core/urls/urls.dart';
import 'package:covid_19/data/models/continents_model.dart';
import 'package:http/http.dart' as http;

class get_continent_data{

  Future<continents_model> fetch_data(String continent)async
  {
    final response=await http.get(Uri.parse( '$continents_url$continent?strict=true'));
    if(response.statusCode==200)
    {
      final continents_model get_model=continents_model.fromJson(jsonDecode(response.body)) ;
      return get_model;
    }else
    {
      throw ServerException();
    } }
}
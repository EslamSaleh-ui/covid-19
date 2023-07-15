import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:covid_19/core/errors/exceptions/exceptions.dart';
import 'package:covid_19/data/models/countries_models.dart';
import '../../core/urls/urls.dart';

class get_country_posts{
  Future<countries_model> fetch_data(String country)async
  {
    final response=await http.get(Uri.parse( '$countries_url$country?strict=true'));
    if(response.statusCode==200)
    {      final countries_model get_model=countries_model.fromJson( jsonDecode(response.body));
      return get_model;
    }else
    {
      throw ServerException();
    } }
}
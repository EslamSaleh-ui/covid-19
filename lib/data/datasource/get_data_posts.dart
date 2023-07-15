import 'dart:convert';
import 'package:covid_19/core/errors/exceptions/exceptions.dart';
import 'package:covid_19/core/urls/urls.dart';
import 'package:http/http.dart' as http;
import 'package:covid_19/data/models/all_data_model.dart';

class get_data_posts{

  Future<all_data_model> fetch_data()async
  {

    final response=await http.get(Uri.parse( all_world_url));
    if(response.statusCode==200)
      {
        final  get_model=all_data_model.fromJson(jsonDecode(response.body)) ;
      return get_model;
      }else
        {
          throw ServerException();
        }
}}
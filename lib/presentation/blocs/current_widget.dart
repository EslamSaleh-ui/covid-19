import 'package:covid_19/presentation/pages/all_data.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class current_widget extends Cubit<Widget>{
  current_widget():super(all_data());

  void active_index(Widget e)=>emit(e);  }
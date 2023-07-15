import 'package:covid_19/core/utils/consts.dart';
import 'package:covid_19/presentation/blocs/active_navigator_item.dart';
import 'package:covid_19/presentation/blocs/current_widget.dart';
import 'package:covid_19/presentation/pages/all_data.dart';
import 'package:covid_19/presentation/pages/continents_data.dart';
import 'package:covid_19/presentation/pages/country_data.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';

class bottom_navigation_bar extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return  BlocBuilder<active_navigator_item,int>(
      builder: (context,item)=> BottomNavigationBar(items:icons.map((e) {
        return BottomNavigationBarItem(icon: e.first,
            activeIcon: e.last,tooltip: title.elementAt(icons.indexOf(e))
            ,label:title.elementAt(icons.indexOf(e)));
      }).toList(),currentIndex:item ,selectedItemColor: Colors.red,onTap: (int e){
        BlocProvider.of<active_navigator_item>(context, listen: false).active_index(e);
        switch(e) {
          case 0:
              BlocProvider.of<current_widget>(context, listen: false).active_index(all_data());
            break;
          case 1:
            BlocProvider.of<current_widget>(context, listen: false).active_index(continents_data() );
            break;
          case 2:
            BlocProvider.of<current_widget>(context, listen: false).active_index(country_data() );
            break;
          default:
        }
      })
    );
  } }
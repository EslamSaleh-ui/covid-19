import 'package:covid_19/presentation/blocs/current_widget.dart';
import 'package:covid_19/presentation/pages/piechart.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:covid_19/core/utils/consts.dart';
import 'package:flutter/material.dart';

class getdatalist extends StatelessWidget{
  final dynamic posts;
  final bool loaded;
  final Widget widget;
  const getdatalist({super.key,required this.loaded,required this.posts, required this.widget});

  @override
  Widget build(BuildContext context) {

    return
      Column(children: [Align(child: IconButton(tooltip: 'Show Charts', onPressed: (){
      if(posts!=null)
        BlocProvider.of<current_widget>(context).active_index(
          piechart(total_result: {"Cases:":posts!.cases.toDouble(),"Active_result:":posts!.active.toDouble(),
            "Recoverd:":posts!.recovered.toDouble(),"Death:":posts!.deaths.toDouble() }, total_today_result: {
            "Cases_today:":posts!.todayCases.toDouble(),"Recovered_today:":posts!.todayRecovered.toDouble(),
            "Death_today:":posts!.todayDeaths.toDouble()}, colors1: colors,colors2: [colors[0],colors[2],colors[3]]));
          }, icon:Icon(Icons.stacked_bar_chart_rounded,size:20)),
    alignment: Alignment.topRight),
      widget
    ]);
  }
}
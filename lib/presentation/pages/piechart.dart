import 'package:flutter/material.dart';
import 'package:pie_chart/pie_chart.dart';
import 'package:responsive_flutter/responsive_flutter.dart';

class piechart extends StatelessWidget{
  final Map<String,double> total_result,total_today_result;
  final List<Color> colors1,colors2;

  const piechart({super.key, required this.total_result, required this.total_today_result, required this.colors1,required this.colors2});
  @override
  Widget build(BuildContext context) {

   return SingleChildScrollView(child:Column(
  children:<Widget>[    Divider(height: 40,color: Colors.transparent),
    view_piechart(total_result, context, colors1),
    Divider(height:ResponsiveFlutter.of(context).hp(10) ,color: Colors.transparent),
    view_piechart(total_today_result, context,colors2)]
   ));
  }

  Widget view_piechart(Map<String,double> item,BuildContext context,List<Color> color1){
    return PieChart(dataMap: item,
        chartLegendSpacing: 32,
        chartRadius: MediaQuery.of(context).size.width / 3.2,
        colorList:color1 ,
        initialAngleInDegree: 0,
        chartType: ChartType.ring,
        ringStrokeWidth: 32,
        legendOptions: LegendOptions(
            showLegendsInRow: false,
            legendPosition: LegendPosition.right,
            showLegends: true,
            legendShape: BoxShape.rectangle,
            legendTextStyle: TextStyle(
              fontWeight: FontWeight.bold,
            )),
        chartValuesOptions: ChartValuesOptions(
          showChartValueBackground: true,
          showChartValues: true,
          showChartValuesInPercentage: true,
          showChartValuesOutside: true,
          decimalPlaces: 1,
        ));
  }  }
import 'package:covid_19/core/utils/consts.dart';
import 'package:responsive_flutter/responsive_flutter.dart';
import 'package:covid_19/presentation/widgets/list_tile.dart';
import 'package:flutter/material.dart';

class listview extends StatelessWidget{
  final dynamic posts;
  final bool loaded;

  const listview({super.key,required this.loaded,required this.posts});

  @override
  Widget build(BuildContext context) {

    List <Map<String,num>> entity=loaded?[{"Cases:":posts!.cases,"Cases_today:":posts!.todayCases,"Cases_per_million":posts!.casesPerOneMillion},
      {"Tests:":posts!.tests,"Active_result:":posts!.active,"Tests_per_million:":posts!.testsPerOneMillion,"Active_result_per_million:":posts!.activePerOneMillion},
      {"Recoverd:":posts!.recovered,"Recovered_today:":posts!.todayRecovered,"Recovered_per_million:":posts!.recoveredPerOneMillion},
      {"Death:":posts!.deaths,"Death_today:":posts!.todayDeaths,"Death_per_million:":posts!.deathsPerOneMillion}]:[{}];

    return  Expanded(child:  ListView.separated(
        itemBuilder:(c,i){
          if(!loaded && posts==null)
            return list_tile(color: colors.elementAt(i),height: 100,width: double.infinity );
          return Container(height:100 ,
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),
                  color:colors.elementAt(i)),
              alignment: Alignment.centerLeft,
              padding: EdgeInsets.symmetric(vertical: 5),
              margin: EdgeInsets.symmetric(horizontal: 5),child:
              ListTile( leading: data_icon.elementAt(i),
                  textColor: Colors.white,
                  subtitle: Text('${entity.elementAt(i).keys.elementAt(1)}   ${cn.format(entity.elementAt(i).values.elementAt(1))}\n${entity.elementAt(i).keys.elementAt(2)}   ${cn.format(entity.elementAt(i).values.elementAt(2))}\n'
                      '${entity.elementAt(i).keys.length>=4? entity.elementAt(i).keys.elementAt(3):''}   ${entity.elementAt(i).keys.length>=4?cn.format(entity.elementAt(i).values.elementAt(3)):''}'),
                  title: Text('${entity.elementAt(i).keys.elementAt(0)}   ${cn.format(entity.elementAt(i).values.elementAt(0))}', style: TextStyle(fontSize: ResponsiveFlutter.of(context).fontSize(2.5))  )) );
        }, separatorBuilder: (c,i){return Divider(height:10,color: Colors.transparent);}
        , itemCount:4));
  }
}
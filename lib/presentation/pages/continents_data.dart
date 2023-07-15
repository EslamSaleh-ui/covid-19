import 'package:covid_19/presentation/blocs/continent_bloc/continent_bloc.dart';
import 'package:covid_19/dependenceinjection.dart' as dii;
import 'package:covid_19/presentation/widgets/getcontinentdata.dart';
import 'package:covid_19/presentation/widgets/getdatalist.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';

class continents_data extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
   return BlocProvider<continents_bloc>(create:(_)=>dii.di<continents_bloc>()..add(Wait()),lazy: true,
   child: BlocBuilder<continents_bloc,continent_state>(
       builder: (context,state){
         if(state is Waiting)
           return RefreshIndicator(child: getdatalist(loaded: false, posts: null,
               widget: getcontinentdata(posts: null, loaded: null,number: 0)),
               onRefresh: ()=>_refresh(context));
         else  if(state is Loading)
           return RefreshIndicator(child:getdatalist(loaded: false, posts: null,widget: getcontinentdata(number: 0,posts: null, loaded: false)),
               onRefresh: ()=>_refresh(context));
         else if(state is Getalldatastate) {
           return RefreshIndicator(child:
           getdatalist(posts: state.posts,loaded: true,widget: getcontinentdata(posts: state.posts,loaded: true,number: state.posts.countries.length)),
               onRefresh:()=>_refresh(context));}
         else if(state is Error) {
           EasyLoading.showError(state.error, duration: Duration(seconds: 4),
               maskType: EasyLoadingMaskType.black);
           return RefreshIndicator(child: getdatalist(loaded: false, posts: null,
               widget: getcontinentdata(posts: null, loaded: null,number: 0)),
               onRefresh: ()=>_refresh(context));}
            return Container();
       })
   );
  }
  Future<void> _refresh(BuildContext context)async
  {BlocProvider.of<continents_bloc>(context).add(Wait());}
}
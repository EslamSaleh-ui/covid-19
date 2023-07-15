import 'package:covid_19/core/errors/failures/failures.dart';
import 'package:covid_19/dependenceinjection.dart' as dii;
import 'package:covid_19/presentation/blocs/country_bloc/country_bloc.dart';
import 'package:covid_19/presentation/widgets/getcountrydata.dart';
import 'package:covid_19/presentation/widgets/getdatalist.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';

class country_data extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return BlocProvider<country_bloc>(create:(_)=>dii.di<country_bloc>()..add(Wait()),lazy: true,
        child: BlocBuilder<country_bloc,country_state>(
            builder: (context,state){
              if(state is Waiting)
                return RefreshIndicator(child: getdatalist(loaded: false, posts: null,
                    widget: getcountrydata(posts: null, loaded: null,flag: '',name: '')),
                    onRefresh: ()=>_refresh(context));
              else  if(state is Loading)
                return RefreshIndicator(child:getdatalist(loaded: false, posts: null,widget: getcountrydata(posts: null, loaded: false
                ,flag: '',name: '')),
                    onRefresh: ()=>_refresh(context));
              else if(state is Getalldatastate) {
                return RefreshIndicator(child:
                getdatalist(posts: state.posts,loaded: true,widget: getcountrydata(posts: state.posts,loaded: true,
                name: state.posts.country,flag: state.posts.flag)),
                    onRefresh:()=>_refresh(context));
              }
              else if(state is Error) {
                EasyLoading.showError(
                    state.error, duration: Duration(seconds: 4),
                    maskType: EasyLoadingMaskType.black);
                return RefreshIndicator(
                    child:getdatalist(loaded: false, posts: null,widget:
                getcountrydata(posts: null, loaded: null,flag: '',name: '')),
                    onRefresh: ()=>_refresh(context));
              } return Container();
            })
    );
  }
  Future<void> _refresh(BuildContext context)async
  {BlocProvider.of<country_bloc>(context).add(Wait());}
}
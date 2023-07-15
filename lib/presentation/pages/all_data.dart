import 'package:covid_19/presentation/widgets/getalldatalist.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:covid_19/presentation/blocs/all_data_bloc/all_data_bloc.dart';
import 'package:covid_19/presentation/widgets/getdatalist.dart';
import 'package:covid_19/dependenceinjection.dart' as dii;
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class all_data extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
  return Scaffold(body:
      BlocProvider(create:(_)=> dii.di<alldata>()..add(Getalldata()),child:
     BlocBuilder<alldata,all_data_state>(
      builder: (context,state){
        if(state is Loading)
        return RefreshIndicator(child:
        getdatalist(loaded: false, posts: null,widget: getalldatalist(loaded: false,posts:null)),
            onRefresh: () => _refresh(context));
        else if(state is Getalldatastate) {
          return RefreshIndicator(child:
        getdatalist(posts: state.posts,loaded: true,widget: getalldatalist(loaded: true,posts: state.posts)),
                onRefresh: () => _refresh(context));
        } else if(state is Error) {
          EasyLoading.showError(state.error, duration: Duration(seconds: 4),
              maskType: EasyLoadingMaskType.black);
          return RefreshIndicator(child:
          getdatalist(loaded: false, posts: null,widget: getalldatalist(loaded: false,posts:null)),
              onRefresh: () => _refresh(context));} return Container();
      }
    ))
  );
  }
Future<void> _refresh(BuildContext context)async
  {BlocProvider.of<alldata>(context).add(Getalldata());}
}
import 'package:covid_19/core/utils/myhomepage_header.dart';
import 'package:covid_19/core/utils/prevention.dart';
import 'package:covid_19/core/widgets/bottom_navigation_bar.dart';
import 'package:covid_19/presentation/blocs/active_navigator_item.dart';
import 'package:covid_19/presentation/blocs/current_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
class MyHomePage extends StatelessWidget with WidgetsBindingObserver {
  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    print(state.name);
  }
  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addObserver(this);
    return SafeArea(child:
        MultiBlocProvider(
        providers: [
          BlocProvider(create:(_)=> current_widget(),lazy: true),
          BlocProvider(create:(_)=> active_navigator_item(),lazy: true),
        ],child: Scaffold(
        body: Column(children: [
          myhomepage_header()  ,
          Divider(height:10,color: Colors.transparent),
          Align(alignment: Alignment.centerLeft,child:
          Text('  Prevention',style: TextStyle(fontWeight:FontWeight.bold,fontSize: 20 )) ),
          Divider(height:10,color: Colors.transparent),
         Prevention(), Expanded(child:
          InteractiveViewer(
             maxScale: 5,
              child: BlocBuilder<current_widget,Widget>(
                  builder: (context,item){
                    return item;  }))
         )
        ]),
      bottomNavigationBar:bottom_navigation_bar()
    ))
        );
  }
}
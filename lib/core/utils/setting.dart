import 'package:covid_19/core/utils/Avatar.dart';
import 'package:covid_19/core/utils/consts.dart';
import 'package:flutter/material.dart';
import 'package:switcher_button/switcher_button.dart';
import 'package:responsive_flutter/responsive_flutter.dart';

class setting extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(foregroundColor: Colors.white,backgroundColor: Colors.transparent.withOpacity(0.001)),
      backgroundColor: Colors.red.shade900,
      body:   Container(
        height:ResponsiveFlutter.of(context).hp(80) ,
        width: ResponsiveFlutter.of(context).wp(80),
        margin: EdgeInsets.symmetric(vertical: ResponsiveFlutter.of(context).hp(10),
        horizontal:ResponsiveFlutter.of(context).wp(10)),
        decoration: BoxDecoration(borderRadius:BorderRadius.circular(25),color: Colors.white),
        child: Stack(children: [
        SingleChildScrollView(
         child: Column(
            children:<Widget> [
    Avatar(height: 15,width: double.infinity/2,image_color:Colors.red.shade900),
         for(String item in setting1)
         ListTile(leading: setting2.elementAt(setting1.indexOf(item)),
         title: Text(item,style:TextStyle(fontWeight:FontWeight.bold )),
         trailing:setting1.indexOf(item)<2? SwitcherButton(
            onColor:Colors.blue.shade600 ,offColor: Colors.red.shade600,
           onChange: (i){},
         ):Text('') )] )
    ),Padding(padding: EdgeInsets.only(bottom: 5),child:
          Align(child: Text('Produced by Spear @'),alignment: Alignment.bottomCenter))
        ])
      ));
  }
}

// ValueNotifier<String> curr_title=ValueNotifier<String>('Dashboard');

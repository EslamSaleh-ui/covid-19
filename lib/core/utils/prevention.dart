import 'package:covid_19/core/utils/consts.dart';
import 'package:flutter/material.dart';
import 'package:responsive_flutter/responsive_flutter.dart';

class Prevention extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Row(            mainAxisAlignment: MainAxisAlignment.spaceAround,
    children:prevention.map((e) =>
    SizedBox(height:ResponsiveFlutter.of(context).hp(20),
    width: ResponsiveFlutter.of(context).wp(25),
    child: Column(
    mainAxisAlignment: MainAxisAlignment.spaceAround,
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
    Container(height:ResponsiveFlutter.of(context).hp(10) ,
    width: ResponsiveFlutter.of(context).wp(20),
    decoration: BoxDecoration(
    image: DecorationImage(
    image: AssetImage(e)
    )),),
    Text(prevention1.elementAt(prevention.indexOf(e)),style: TextStyle(fontWeight:FontWeight.bold )
    ,textAlign: TextAlign.center,softWrap: true,overflow: TextOverflow.visible)
    ],
    )) ).toList());
  }
}
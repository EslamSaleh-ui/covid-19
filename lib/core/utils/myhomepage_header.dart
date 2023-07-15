import 'package:covid_19/core/utils/Avatar.dart';
import 'package:covid_19/core/utils/setting.dart';
import 'package:flutter/material.dart';
import 'package:responsive_flutter/responsive_flutter.dart';
import 'package:shimmer_container/shimmer_container.dart';
import 'package:page_transition/page_transition.dart';

class myhomepage_header extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return  Stack(children:
    [Container(child: ShimmerContainer(baseColor: Colors.red.shade900,
        highlightColor: Colors.red.shade300, width:double.infinity ,
        radius: 25,millisecondsDelay: 2000,
        height: ResponsiveFlutter.of(context).hp(20)),
        height: ResponsiveFlutter.of(context).hp(20),width: double.infinity,
        decoration: BoxDecoration( color: Colors.red.shade900,
            borderRadius: BorderRadius.vertical(bottom:Radius.circular(100) ))),
     Avatar(height: 15,width: double.infinity,image_color: Colors.white), IconButton(onPressed: (){
        Navigator.of(context).push(PageTransition(child: setting(), type: PageTransitionType.rightToLeft,
        duration: Duration(seconds: 1) ));
      },tooltip: 'Settings', icon: Icon(Icons.settings,color: Colors.white))]);
  }
}
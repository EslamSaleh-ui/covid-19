import 'package:covid_19/core/utils/shimmer.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:lottie/lottie.dart';
import 'package:responsive_flutter/responsive_flutter.dart';

final cn = NumberFormat('###,000');

Widget lottie(BuildContext context,String text){
return Expanded(child:
  ListView(
    children: [ Lottie.asset('asset/4348-single-finger-double-tap-mobile-gesture.json',animate: true,
    height:ResponsiveFlutter.of(context).hp(30),
    width: ResponsiveFlutter.of(context).wp(30)),
 Center(child:  shimmer(text: text, colors: [
    Colors.blue.shade900,Colors.lightBlue, Colors.white ]))
]  )); }

List<List<dynamic>> icons=[[Icon(Icons.home_outlined),Icon(Icons.home_outlined,color: Colors.red)],
[ImageIcon(AssetImage('asset/icon_images/Background2.png')),
  ImageIcon(AssetImage('asset/icon_images/Background3.png'))],
  [ImageIcon(AssetImage('asset/icon_images/Background4.png')),
    ImageIcon(AssetImage('asset/icon_images/Background5.png'))],
];
List<ImageIcon> data_icon=[
  ImageIcon(AssetImage('asset/icon_images/Background1.png'),color: Colors.white),
  ImageIcon(AssetImage('asset/icon_images/test.png'),color: Colors.white),
  ImageIcon(AssetImage('asset/icon_images/recovery.png'),color: Colors.white),
ImageIcon(AssetImage('asset/icon_images/death.png'),color: Colors.white)
];
List<Color> colors=[Colors.red.shade900,Colors.blue.shade900,Colors.green.shade900,Colors.black];
List<String> title=['Home','Continent','Country'];
List<String> continents=['North America','Asia','Europe','South America','Australia-Oceania','Africa'];
List<String> prevention=['asset/prevention/prevention1.png', 'asset/prevention/prevention2.png','asset/prevention/prevention3.png'];
List<String> prevention1=['Avoid close contact','Clean your hand continuously','Wear a face mask'];
List<String> setting1=['Dark/Light Mode','Language','Share App','Rate App','Help Center'];
List<Icon> setting2=[Icon(Icons.brightness_1,color:Colors.yellow.shade600),
Icon(Icons.language,color:Colors.black),Icon(Icons.share,color:Colors.black),
  Icon(Icons.rate_review_outlined,color:Colors.black),Icon(Icons.send_rounded,color:Colors.black)];
List<String> icon1=['EN','أبجد'];
List<IconData> icon2=[Icons.brightness_1, Icons.dark_mode];
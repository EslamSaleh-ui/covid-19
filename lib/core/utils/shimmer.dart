import 'package:responsive_flutter/responsive_flutter.dart';
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class shimmer extends StatelessWidget{
  final String text;
  final List<Color> colors;
  const shimmer({super.key, required this.text, required this.colors });
  @override
  Widget build(BuildContext context) {
    return Shimmer(period: Duration(seconds: 2,milliseconds: 500),
        gradient:LinearGradient(colors: colors,begin: Alignment.topLeft,end: Alignment.bottomRight,
        ), child: Text(text,style: TextStyle(fontSize:ResponsiveFlutter.of(context).fontSize(3))
        ));
  }
}
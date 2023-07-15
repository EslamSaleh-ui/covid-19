import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class list_tile extends StatelessWidget{
  final Color color;
  final double height,width;
  const list_tile({super.key, required this.color, required this.height, required this.width});
  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(child:    Container(height:height ,
        width: width,
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),
            color: color),
        alignment: Alignment.centerLeft,
        padding: EdgeInsets.symmetric(vertical: 5),
        margin: EdgeInsets.symmetric(horizontal: 5)), baseColor: Colors.grey.shade300, highlightColor:Colors.grey.shade100 );
  }

}
import 'package:flutter/material.dart';
import 'package:responsive_flutter/responsive_flutter.dart';

class Avatar extends StatelessWidget{
  final int height;
  final double width;
  final Color image_color;
  const Avatar({super.key, required this.height, required this.width,  required this.image_color});

  @override
  Widget build(BuildContext context) {
    return  Container(margin: EdgeInsets.only(top: 10),
        child: CircleAvatar(backgroundColor: Colors.transparent,
            child: Image.asset('asset/icon_images/Background1.png',color: image_color,height:
            ResponsiveFlutter.of(context).hp(height)  )  ) ,width: width,
        decoration: BoxDecoration(borderRadius:BorderRadius.vertical(bottom:Radius.circular(100))),
        height: ResponsiveFlutter.of(context).hp(height));
  }
}
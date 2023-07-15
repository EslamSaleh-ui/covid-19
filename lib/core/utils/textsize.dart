import 'package:flutter/material.dart';
import 'package:responsive_flutter/responsive_flutter.dart';

class textsize {
  final String text;
  final BuildContext context;

  textsize(this.text, this.context);

  List<double> calculatetextsize()
  {
    final TextPainter textPainter = TextPainter(
        text: TextSpan(text: text ,style: TextStyle(fontSize:ResponsiveFlutter.of(context).fontSize(3) ))
        ,textDirection: TextDirection.ltr);
    textPainter.layout();
    return [textPainter.height,textPainter.width];
  }
}
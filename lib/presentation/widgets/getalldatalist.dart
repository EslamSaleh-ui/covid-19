import 'package:flutter/material.dart';
import 'package:covid_19/core/utils/shimmer.dart';
import 'package:covid_19/presentation/widgets/list_tile.dart';
import 'package:covid_19/core/utils/textsize.dart';
import 'package:covid_19/presentation/widgets/listview.dart';

class getalldatalist extends StatelessWidget{
  final dynamic posts;
  final bool loaded;

  const getalldatalist({super.key,required this.loaded,required this.posts});

  @override
  Widget build(BuildContext context) {
  return Expanded(child:
    Column(children: [ Align(child:!loaded && posts==null?
  Padding(padding:EdgeInsets.symmetric(vertical: 5) ,child:list_tile(color: Colors.grey.shade300, height:textsize('  All World :',context).calculatetextsize().first,
      width:textsize('  All World :',context).calculatetextsize().last))
      :shimmer(text:'  All World :',colors: [
      Colors.black,Colors.black54, Colors.white ]),alignment: Alignment.centerLeft),
    Align(child:!loaded && posts==null?list_tile(color: Colors.grey.shade300, height:textsize('  Affected Countries :    ',context).calculatetextsize().first
        , width:textsize('  Affected Countries :    ',context).calculatetextsize().last):
    shimmer(text:'  Affected Countries : ${posts!.affectedCountries}',colors: [
      Colors.black,Colors.black54, Colors.white ]),alignment: Alignment.centerLeft),
    Divider(height: 8,color: Colors.transparent),
    listview(loaded: loaded,posts: posts)])
  );
  }
}
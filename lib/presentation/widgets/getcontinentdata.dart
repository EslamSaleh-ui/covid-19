import 'package:covid_19/core/utils/shimmer.dart';
import 'package:covid_19/core/utils/textsize.dart';
import 'package:covid_19/presentation/blocs/continent_bloc/continent_bloc.dart';
import 'package:covid_19/presentation/widgets/list_tile.dart';
import 'package:covid_19/presentation/widgets/listview.dart';
import 'package:flutter/material.dart';
import 'package:covid_19/core/utils/consts.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class getcontinentdata extends StatelessWidget{
  final dynamic posts;
  final bool? loaded;
   final int number;

  const getcontinentdata({super.key, required this.posts, required this.loaded, required this.number});
  @override
  Widget build(BuildContext context) {
   return Expanded(child:
   Column(children: [
     Padding(padding: EdgeInsets.symmetric(vertical: 5,horizontal: 10),child:
DropdownButtonFormField(decoration: InputDecoration(border:OutlineInputBorder(
  borderSide: BorderSide(
      width: 3, color: Colors.black)
)) ,
    items:continents.map((e){
  return DropdownMenuItem(child: Text(e),
    value: e, onTap: (){
      BlocProvider.of<continents_bloc>(context).add(Getalldata(e));
    });
}).toList() ,hint:Text('Choose Continent'), onChanged: (e){})),
     loaded==null?Container():Align(child:
     Padding(padding:EdgeInsets.symmetric(vertical: 10) ,child: posts==null?list_tile(color: Colors.grey.shade300, height:textsize('  All World :',context).calculatetextsize().first,
         width:textsize('  Affected countries :    ',context).calculatetextsize().last):shimmer(text:'  Affected countries : ${number}',colors: [
       Colors.black,Colors.black54, Colors.white ]))
         ,alignment: Alignment.centerLeft),
     loaded==null? lottie(context,'Choose Continent') : listview(loaded: loaded!, posts: posts)
   ])
   );
  }
}

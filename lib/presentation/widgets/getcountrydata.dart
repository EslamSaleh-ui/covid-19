import 'package:country_pickers/country.dart';
import 'package:country_pickers/country_pickers.dart';
import 'package:covid_19/core/utils/shimmer.dart';
import 'package:covid_19/core/utils/textsize.dart';
import 'package:covid_19/presentation/blocs/country_bloc/country_bloc.dart';
import 'package:country_pickers/country_picker_dropdown.dart';
import 'package:covid_19/presentation/widgets/list_tile.dart';
import 'package:covid_19/presentation/widgets/listview.dart';
import 'package:flutter/material.dart';
import 'package:covid_19/core/utils/consts.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class getcountrydata extends StatelessWidget{
  final dynamic posts;
  final bool? loaded;
  final String name,flag;

  const getcountrydata({super.key, required this.posts, required this.loaded, required this.name, required this.flag});

  @override
  Widget build(BuildContext context) {
    return Expanded(child:
    Column(children: [
      Container(  decoration:  BoxDecoration(
          border: Border.all(color: Colors.black)),padding: EdgeInsets.all(5)
          ,margin: EdgeInsets.symmetric(vertical: 5,horizontal: 10),child:
     CountryPickerDropdown(itemBuilder: _buildDropdownItem,onValuePicked: (Country value) {
        BlocProvider.of<country_bloc>(context).add(Getalldata(value.name));  }
     ,isExpanded: true))  , loaded==null?Container():Align(child:
      Padding(padding:EdgeInsets.symmetric(vertical: 10) ,child: posts==null?list_tile(color: Colors.grey.shade300,
          height:textsize(' Country : ${name}',context).calculatetextsize().first,
          width:textsize(' Country : ${name}',context).calculatetextsize().last)
          :Wrap(direction: Axis.vertical,
          children:[Padding(padding: EdgeInsets.symmetric(horizontal: 10),
              child:  Image.network(flag,height:textsize(' Country : ${name}',context).calculatetextsize().first ,
      width:textsize(' Country : ${name}',context).calculatetextsize().last,alignment: Alignment.centerLeft,
      )),shimmer(text:' Country : ${name}',colors: [
        Colors.black,Colors.black54, Colors.white ])]))
          ,alignment: Alignment.centerLeft),
      loaded==null? lottie(context,'Choose Country') : listview(loaded: loaded!, posts: posts)
    ])
    );
  }
  Widget _buildDropdownItem(Country country) => Container(
    child: Row(
      children: <Widget>[
        CountryPickerUtils.getDefaultFlagImage(country),
        Text("+${country.phoneCode} ${country.name}"),
      ],
    ),
  );
}
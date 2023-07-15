import 'package:covid_19/core/utils/myhomepage.dart';
import 'package:covid_19/core/utils/shimmer.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:page_transition/page_transition.dart';

class Splash_Screen extends StatelessWidget {
  const Splash_Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(backgroundColor: Colors.red,
        body: Column(crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceAround,children:<Widget>[
              Lottie.asset('asset/17902-covid19.json',animate: true,
                  onLoaded: (c)async{
                    await Future.delayed(const Duration(seconds: 10),(){
                      Navigator.pushReplacement(context,PageTransition(child:  MyHomePage(),duration: Duration(seconds: 4), type:PageTransitionType.rightToLeft) );
                    });
                  }),
              const Center(child: shimmer(text: 'Covid 19',colors: [
                Colors.black,Colors.black54, Colors.white  ])  )
            ])
    );
  }
}

import 'package:covid_19/core/utils/splash_screen.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter/material.dart';
import 'dependenceinjection.dart' as dii;

void main()async {
  WidgetsFlutterBinding.ensureInitialized();
  await dii.dependence();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(

      theme: ThemeData(useMaterial3: true),
      debugShowCheckedModeBanner: false,
      home:Splash_Screen(),
      builder: EasyLoading.init(),
    );
  }
}


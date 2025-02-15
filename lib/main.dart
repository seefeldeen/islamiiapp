import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:untitled4/SCREENS/layout/LayoutScreeen.dart';
import 'package:untitled4/SCREENS/layout/Quraan/detailsofsurah.dart';
import 'package:untitled4/SCREENS/splash/SplachScreen.dart';
import 'package:provider/provider.dart';
import 'package:untitled4/core/AppColors.dart';
import 'package:untitled4/core/themedataaaa.dart';

import 'SCREENS/Welcomescreens.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual,
        overlays: []);
    return MaterialApp(
      theme:  themedataaaa.DARK,
      debugShowCheckedModeBanner: false,
       routes: {
        SplachScreen.routename : (context)=> SplachScreen(),
        Welcomescreens.routeName : (context)=> Welcomescreens(),

         Layoutscreeen.routename : (context)=> Layoutscreeen(),
         detailsofsurah.routename :   (context)=> detailsofsurah(),

       },
             initialRoute:  SplachScreen.routename,
         );
   }
}

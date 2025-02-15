import 'package:flutter/material.dart';
import 'AppColors.dart';

class themedataaaa {


 static ThemeData DARK =  ThemeData(

  textTheme: TextTheme(bodyLarge: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold)
  ,bodySmall: TextStyle(color: Appcolors.Coffee,fontSize: 16,fontWeight: FontWeight.bold)),
  scaffoldBackgroundColor: Appcolors.blackkk,
  primaryColor: Appcolors.Coffee,
  primaryColorDark: Appcolors.blackkk,
  primaryColorLight: Appcolors.whitee
  ,appBarTheme: AppBarTheme(
  centerTitle: true, backgroundColor: Appcolors.blackkk,
  iconTheme: IconThemeData(color: Appcolors.Coffee),

  titleTextStyle: TextStyle(color: Appcolors.Coffee,fontSize: 18)

  )
 );


}
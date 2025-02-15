import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:untitled4/SCREENS/Welcomescreens.dart';
import 'package:untitled4/SCREENS/layout/LayoutScreeen.dart';
import 'package:untitled4/core/AppColors.dart';

class SplachScreen extends StatefulWidget {
  const SplachScreen({super.key});
  static const String routename = "SPLASH";

  void isopened() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
  }

  @override
  State<SplachScreen> createState() => _SplachScreenState();
}

class _SplachScreenState extends State<SplachScreen> {
  bool opened = false;

  @override
  void initState() {{
      Future.delayed(Duration(seconds: 3), () {

        if(opened != false){
        Navigator.pushReplacementNamed(context, Layoutscreeen.routename);}
         else {
          Navigator.pushReplacementNamed(context, Welcomescreens.routeName);
          opened= true;


        }


      });
      super.initState();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Appcolors.blackkk,
        body: Center(
            child: Column(children: [
          SizedBox(
            height: 200,
          ),
          Image(image: AssetImage("assets/images/Group 28.png")),
          Text(
            "Let's ",
            style: TextStyle(
              color: Appcolors.Coffee,
              fontSize: 24,
            ),
          ),
          Text(
            "have ",
            style: TextStyle(
              color: Appcolors.Coffee,
              fontSize: 24,
            ),
          ),
          Text(
            "some ",
            style: TextStyle(
              color: Appcolors.Coffee,
              fontSize: 24,
            ),
          ),
          Text(
            "Peace... ",
            style: TextStyle(
              color: Appcolors.Coffee,
              fontSize: 32,
              fontWeight: FontWeight.bold,
            ),
          )
        ])));
  }
}

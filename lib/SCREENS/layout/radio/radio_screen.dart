import 'package:flutter/material.dart';

class radioscreen extends StatelessWidget {
  const radioscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Container(
        decoration: const BoxDecoration(
        image: DecorationImage(
        image: AssetImage("assets/images/Background.png"),
    fit: BoxFit.cover)),
    child: Center(
    child: SafeArea(
    child: Padding(
      padding: const EdgeInsets.all(6.0),
      child: Column(
      children: [
      Image.asset("assets/images/Logo.png",),
      SizedBox(height: 20),
      Row(mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset("assets/images/Button.png",height:40,),
          SizedBox(width: 20),
          Image.asset("assets/images/Button.png")
        ],
      ),
      SizedBox(height: 10),
      Image.asset("assets/images/Group 2.png"),
      SizedBox(height: 10),
Image.asset("assets/images/Group 2.png"),
      SizedBox(height: 10),
Image.asset("assets/images/Group 2.png"),
      SizedBox(height: 20),



      ]
      ),
    )
    )
    )
    );


  }
}

import 'package:flutter/material.dart';
import 'package:untitled4/core/AppColors.dart';

import 'HadethScreen.dart';

class HadethDetailsScreen extends StatefulWidget {
  static const String routeName = "hadethDetails";

  const HadethDetailsScreen({super.key});

  @override
  State<HadethDetailsScreen> createState() => _HadethDetailsScreenState();
}

class _HadethDetailsScreenState extends State<HadethDetailsScreen> {
  String sura = "";
  List<String> suraList = [];

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    var arg = ModalRoute.of(context)!.settings.arguments as HadethData;
    return Scaffold(
      backgroundColor: Appcolors.blackkk,
      appBar: AppBar(
        title: Text(arg.title),
      ),
      body: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Image.asset("assets/images/Mosque-01.png"),
          Column(
            children: [
              Row(
                textDirection: TextDirection.ltr,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset("assets/images/left.png"),
                  Expanded(
                    child: FittedBox(
                      fit: BoxFit.scaleDown,
                      child: Text(arg.title,
                          style: const TextStyle(
                              color: Appcolors.whitee,
                              fontSize: 35,
                              fontWeight: FontWeight.bold)),
                    ),
                  ),
                  Image.asset("assets/images/right.png"),
                ],
              ),
              Text(
                arg.body,
                textAlign: TextAlign.center,
                style: const TextStyle(color: Appcolors.whitee,fontSize: 22),
              )
            ],
          ),
        ],
      ),
    );
  }
}
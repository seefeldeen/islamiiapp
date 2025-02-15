import 'package:flutter/material.dart';
import 'package:untitled4/core/AppColors.dart';
import 'HadethScreen.dart';
import 'hadeth_details_screen.dart';

class HadethCardWidget extends StatelessWidget {

  HadethData hadethData;

  HadethCardWidget({super.key, required this.hadethData});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, HadethDetailsScreen.routeName,
            arguments: hadethData);
      },
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 12),
        decoration: BoxDecoration(
            color: Appcolors.Coffee,
            borderRadius: BorderRadius.circular(20)),
        child: Stack(
          children: [
            Column(
              children: [
                Expanded(child: Image.asset("assets/images/Mosque-01.png")),
                ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Image.asset("assets/images/Mosque-01.png")),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Row(
                    textDirection: TextDirection.ltr,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Image.asset(
                        "assets/images/left.png",
                        color: Appcolors.blackkk,
                      ),
                      Expanded(
                        child: FittedBox(
                          fit: BoxFit.scaleDown,
                          child: Text(hadethData.title,
                              style: const TextStyle(
                                  color: Appcolors.blackkk,
                                  fontSize: 26,
                                  fontWeight: FontWeight.bold)),
                        ),
                      ),
                      Image.asset(
                       "assets/images/right.png",
                        color: Appcolors.blackkk,
                      ),
                    ],
                  ),
                  Text(
                    hadethData.body,
                    textAlign: TextAlign.center,
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
import 'package:flutter/material.dart';
import 'package:untitled4/SCREENS/layout/Quraan/Qur2anScreen.dart';
import 'package:untitled4/SCREENS/layout/Quraan/detailsofsurah.dart';
import 'package:untitled4/core/themedataaaa.dart';

import '../../../core/AppColors.dart';

class savedwidget extends StatelessWidget {
SURADATA bianatelsoura  ;
  savedwidget({required this.bianatelsoura});

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);

    return InkWell(
      onTap: (){ Navigator.pushNamed(context, detailsofsurah.routename,
      arguments: bianatelsoura);

      }
      ,child: Container(
        padding: const EdgeInsets.all(10),
        margin: const EdgeInsets.all(4),
        decoration:  BoxDecoration(color: Appcolors.Coffee,
            borderRadius:BorderRadius.circular(20) ),


        child: Row(mainAxisSize: MainAxisSize.min,
          children: [Column(
            children: [Text(bianatelsoura.surahnameinar,style: theme.textTheme.bodyLarge,),
              const SizedBox(height: 10,),
              Text(bianatelsoura.surahnameineng,style: theme.textTheme.bodyLarge,),
              const SizedBox(height: 10,),
              Text(bianatelsoura.ayaverses+" verses",style: theme.textTheme.bodyLarge,),
              const SizedBox()],
          ),const SizedBox(width: 15,),
            Image.asset("assets/images/quranSura.png")],
        ),
      ),
    );
  }
}

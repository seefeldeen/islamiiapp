import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart' ;
import 'package:untitled4/SCREENS/layout/Quraan/Qur2anScreen.dart';
import 'package:untitled4/SCREENS/layout/Quraan/detailsofsurah.dart';
import 'package:untitled4/SCREENS/layout/Quraan/savedwidget.dart';
import 'package:untitled4/core/AppColors.dart';
import 'package:untitled4/core/themedataaaa.dart';

class qur2anwidget extends StatelessWidget {
  final List<String> AyaNumber = [
    '7',
    '286',
    '200',
    '176',
    '120',
    '165',
    '206',
    '75',
    '129',
    '109',
    '123',
    '111',
    '43',
    '52',
    '99',
    '128',
    '111',
    '110',
    '98',
    '135',
    '112',
    '78',
    '118',
    '64',
    '77',
    '227',
    '93',
    '88',
    '69',
    '60',
    '34',
    '30',
    '73',
    '54',
    '45',
    '83',
    '182',
    '88',
    '75',
    '85',
    '54',
    '53',
    '89',
    '59',
    '37',
    '35',
    '38',
    '29',
    '18',
    '45',
    '60',
    '49',
    '62',
    '55',
    '78',
    '96',
    '29',
    '22',
    '24',
    '13',
    '14',
    '11',
    '11',
    '18',
    '12',
    '12',
    '30',
    '52',
    '52',
    '44',
    '28',
    '28',
    '20',
    '56',
    '40',
    '31',
    '50',
    '40',
    '46',
    '42',
    '29',
    '19',
    '36',
    '25',
    '22',
    '17',
    '19',
    '26',
    '30',
    '20',
    '15',
    '21',
    '11',
    '8',
    '5',
    '19',
    '5',
    '8',
    '8',
    '11',
    '11',
    '8',
    '3',
    '9',
    '5',
    '4',
    '6',
    '3',
    '6',
    '3',
    '5',
    '4',
    '5',
    '6'
  ];
SURADATA surahinestant ;
void Function (int i) ontap;
  qur2anwidget(
      {required this.surahinestant
        ,required this.ontap, });

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);

    return InkWell(
      onTap: () {
        ontap(surahinestant.rkmelsora);
        Navigator.pushNamed(context, detailsofsurah.routename,
            arguments: surahinestant);
            },
      child: Row(
        children: [
          Stack(
            fit: StackFit.loose,
            alignment: Alignment.center,
            children: [
              Image.asset(
                "assets/images/arabic-art-svgrepo-com 1.png",
              ),
              Text(
                (surahinestant.rkmelsora + 1).toString(),
                style: TextStyle(color: Appcolors.whitee, fontSize: 16),
              )
            ],
          ),
          SizedBox(width: 20),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                surahinestant.surahnameineng,
                style: theme.textTheme.bodyLarge,
              ),
              SizedBox(width: 20),
              Text(
               surahinestant.ayaverses,
                style: TextStyle(
                    color: Appcolors.whitee,
                    fontSize: 14,
                    fontWeight: FontWeight.bold),
              ),
              Text(
                ("verses"),
                style: TextStyle(
                    color: Appcolors.whitee,
                    fontSize: 14,
                    fontWeight: FontWeight.bold),
              ),
            ],
          ),
          Spacer(),
          Text(
            surahinestant.surahnameinar,
            style: TextStyle(
                color: Appcolors.whitee,
                fontSize: 20,
                fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}


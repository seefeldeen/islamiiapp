import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:untitled4/SCREENS/layout/Quraan/qur2anwidget.dart';
import 'package:untitled4/core/AppColors.dart';

import 'Qur2anScreen.dart';

class detailsofsurah extends StatefulWidget {

  static const String routename = "surahdetails";

  detailsofsurah({super.key});

  @override
  State<detailsofsurah> createState() => _detailsofsurahState();
}

class _detailsofsurahState extends State<detailsofsurah> {
String naselsoura ="";
List<String> elsoura = [];
  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    var arg = ModalRoute
        .of(context)!
        .settings
        .arguments as SURADATA;
    if (naselsoura.isEmpty){
    readfile(arg.rkmelsora);
    }
    return Scaffold(
      appBar: AppBar(
          title: Text(arg.surahnameineng, style: theme.textTheme.bodyLarge,)
      ),
      body: Column(
        children: [
          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
            textDirection: TextDirection.ltr,
            children: [
              Image.asset("assets/images/left.png"),
              Center(child: Text(
                arg.surahnameinar, style: theme.textTheme.bodyLarge,)),
              Image.asset("assets/images/right.png"),
            ],
          ),
          Expanded(
            child: ListView(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text.rich(
                    TextSpan(
                        children: elsoura.map(
                              (e) {
                            int index = elsoura.indexOf(e);
                            return TextSpan(
                              text: e.trim(),
                              recognizer: TapGestureRecognizer()
                                ..onTap = () {
                                  showModalBottomSheet(
                                    context: context,
                                    builder: (context) {
                                      return Container(
                                        width: double.infinity,
                                        height: 250,
                                        child: Center(
                                            child: Text(
                                              e,
                                              style: TextStyle(fontSize: 30),
                                            )),
                                      );
                                    },
                                  );
                                },
                              children: [
                                TextSpan(
                                    text: " [${index + 1}] ",
                                    style: const TextStyle(color: Colors.white)
                                )
                              ],
                              style: TextStyle(
                                fontSize: 24,
                                color: Appcolors.Coffee

                              ),
                            );
                          },
                        ).toList()),
                    textAlign: TextAlign.center,
                    textDirection: TextDirection.rtl,
                  ),
                ),
              ],
            ),
          )

        ]
      ),
    );
  }

    void readfile(int i)async{
      naselsoura =  await rootBundle.loadString("assets/suras/${i+1}.txt");
      elsoura = naselsoura.split("\n");
      naselsoura="";
      for (int i =0 ; i < elsoura.length; i++ ){
        naselsoura += elsoura[i]+ "[${i+1}]";
      }
      setState(() {
});  }

}


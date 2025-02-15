import 'package:flutter/material.dart';
import 'package:untitled4/SCREENS/layout/A7adeth/HadethScreen.dart';
import 'package:untitled4/SCREENS/layout/Quraan/Qur2anScreen.dart';
import 'package:untitled4/SCREENS/layout/SB7A/SB7A.dart';
import 'package:untitled4/SCREENS/layout/radio/radio_screen.dart';
import 'package:untitled4/SCREENS/layout/time/time_screen.dart';
import 'package:untitled4/core/AppColors.dart';

class Layoutscreeen extends StatefulWidget {
  const Layoutscreeen({super.key});
  static const routename = "layout";

  @override
  State<Layoutscreeen> createState() => _LayoutscreeenState();
}

class _LayoutscreeenState extends State<Layoutscreeen> {
  int selectedindex = 0;
  List< Widget> screenslist =[Qur2anscreen(),HadethScreen(),
  Sb7a(),
    radioscreen(),
    TimeScreen()
  ];


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: Scaffold(
        backgroundColor: Appcolors.blackkk,
        bottomNavigationBar: BottomNavigationBar(
            onTap: (value) {
              selectedindex = value;
              setState(() {});
            },
            currentIndex: selectedindex,
            backgroundColor: Appcolors.Coffee,
            type: BottomNavigationBarType.fixed,
            selectedIconTheme: IconThemeData(color: Appcolors.whitee),
            selectedLabelStyle: TextStyle(color: Appcolors.whitee),
            showUnselectedLabels: true,
            showSelectedLabels: true,
            items: [
              BottomNavigationBarItem(
                icon: Container(
                    decoration: BoxDecoration(
                        color:selectedindex !=0 ?Colors.transparent
                            : Colors.grey,                        borderRadius: BorderRadius.circular(16)),
                    padding: EdgeInsets.all(8),
                    child:
                        ImageIcon(AssetImage("assets/images/quraanicon.png"))),
                label: "Quraan",
              ),
              BottomNavigationBarItem(
                  icon: Container(
                      decoration: BoxDecoration(
                          color:selectedindex !=1 ?Colors.transparent
                          : Colors.grey,
                          borderRadius: BorderRadius.circular(16)),
                      padding: EdgeInsets.all(8),
                      child: ImageIcon(
                          AssetImage("assets/images/hadethicon.png"))),
                  label: "hadeth"),
              BottomNavigationBarItem(
                  icon: Container(
                      decoration: BoxDecoration(
                          color: selectedindex !=2 ?Colors.transparent
                          : Colors.grey,
                          borderRadius: BorderRadius.circular(16)),
                      padding: EdgeInsets.all(8),
                      child: ImageIcon(AssetImage(
                          "assets/images/necklace-islam-svgrepo-com 1.png"))),
                  label: "TASBIH"),
              BottomNavigationBarItem(
                  icon: Container(
                      decoration: BoxDecoration(
                          color:selectedindex !=3?Colors.transparent
                              : Colors.grey,
                          borderRadius: BorderRadius.circular(16)),
                      padding: EdgeInsets.all(8),
                      child:
                          ImageIcon(AssetImage("assets/images/radioicon.png"))),
                  label: "radio"),
              BottomNavigationBarItem(
                  icon: Container(
                      decoration: BoxDecoration(
                          color:selectedindex !=4 ?Colors.transparent
                              : Colors.grey,                          borderRadius: BorderRadius.circular(16)),
                      padding: EdgeInsets.all(8),
                      child: ImageIcon(AssetImage("assets/images/azkar.png"))),
                  label: "azkar"),
            ]),
        body:  screenslist[selectedindex],
      ),
    );
  }
}

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:untitled4/SCREENS/layout/A7adeth/hadeth_card_widget.dart';

class HadethScreen extends StatefulWidget {
  const HadethScreen({super.key});

  @override
  State<HadethScreen> createState() => _HadethScreenState();
}

class _HadethScreenState extends State<HadethScreen> {
  List<HadethData> ahadeth = [];

  @override
  void initState() {
    readFiles();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/images/Background.png"),
              fit: BoxFit.cover)),
      child: Center(
        child: SafeArea(
          child: Column(
            children: [
              Image.asset("assets/images/Logo.png"),
              Visibility(
                visible: ahadeth.isNotEmpty,
                child: Expanded(
                  child: CarouselSlider.builder(
                      itemCount: ahadeth.length,
                      itemBuilder: (context, index, realIndex) {
                        return
                          HadethCardWidget(hadethData: ahadeth[index]);
                      },
                      options: CarouselOptions(
                          height: double.infinity,
                          pageSnapping: true,
                          enlargeCenterPage: true,
                          viewportFraction: 0.8)),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  void readFiles() async {
    for (int i = 1; i <= 50; i++) {
      String fullData = await rootBundle.loadString("assets/ahadeth/h$i.txt");
      ahadeth.add(HadethData(fullData.split("\n")[0], fullData.split("\n")[1]));
    }
    setState(() {});
  }
}

class HadethData {
  String title;
  String body;

  HadethData(this.title, this.body);
}

import 'package:flutter/material.dart';
import 'package:untitled4/core/AppColors.dart';

class Sb7a extends StatefulWidget {
  const Sb7a({super.key});

  @override
  State<Sb7a> createState() => _Sb7aState();
}

class _Sb7aState extends State<Sb7a> {
  int index = 0; // Moved outside of build to avoid resetting on rebuild
  double anglle = 0; // Fixed typo: anglle -> angle

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/images/azkarback.png"),
          fit: BoxFit.cover,
        ),
      ),
      child: Center(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(6.0),
            child: Column(
              children: [
                Image.asset("assets/images/Logo.png"),
                const SizedBox(height: 30),
                Image.asset("assets/images/سَبِّحِ اسْمَ رَبِّكَ الأعلى.png"),
                Center(
                  child: Stack(
                    children: [
                      Positioned(
                        right: 78,
                        bottom: 295,
                        child: Image.asset(
                          "assets/images/Group 37.png",
                          height: 300,
                          width: 150,
                        ),
                      ),
                      Transform.rotate(
                        angle: anglle,
                        child: InkWell(
                          onTap: () {
                            setState(() {
                              index++;
                              anglle += 0.1;
                            });
                          },
                          child: Image.asset(
                            "assets/images/SebhaBody 1.png",
                            height: 500,
                            width: 300,
                          ),
                        ),
                      ),
                      Positioned(
                        bottom: 250,
                        right: 70,
                        child: Text(
                          "سبحان الله",
                          style: TextStyle(
                            color: Appcolors.whitee,
                            fontSize: 40,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Positioned(
                        bottom: 190,
                        right: 140,
                        child: Text(
                          index.toString(),
                          style: TextStyle(
                            color: Appcolors.whitee,
                            fontSize: 40,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
import 'package:flutter/material.dart';
import 'package:untitled4/core/AppColors.dart';

class TimeScreen extends StatelessWidget {
  const TimeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/images/2.png"),
                fit: BoxFit.cover)),
        child: Center(
            child: SafeArea(
                child: Padding(
                  padding: const EdgeInsets.all(6.0),
                  child: Column(
                      children: [
                        SizedBox(height: 120),
                            Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Image.asset("assets/images/Group 10.png",),
                            ),
                            SizedBox(height: 50,),
                       Text("AZKAR ",style: TextStyle(color: Appcolors.whitee,fontSize: 18,fontWeight: FontWeight.bold),),
                        SizedBox(height: 50,),
                        SizedBox(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [SizedBox(width: 20),
                              // First Image
                              Expanded(
                                flex: 1,
                                child: Text("AZKAR elsabah ",style: TextStyle(color: Appcolors.whitee,fontSize: 18,fontWeight: FontWeight.bold),)
                              ),
                              const SizedBox(width: 10), // Spacer between images
                              // Second Image
                              Expanded(
                                flex: 1,
                                child: Text("AZKAR elmasaa ",style: TextStyle(color: Appcolors.whitee,fontSize: 18,fontWeight: FontWeight.bold),)
                              )],
                          ),
                        ),
                        SizedBox(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              // First Image
                              Expanded(
                                flex: 1,
                                child: Image.asset(
                                  "assets/images/Illustration (2).png",
                                  fit: BoxFit.cover,
                                ),
                              ),
                              const SizedBox(width: 10), // Spacer between images
                              // Second Image
                              Expanded(
                                flex: 1,
                                child: Image.asset(
                                  "assets/images/Illustration (3).png",
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ],
                          ),
                        ),

                        SizedBox(height: 20),



                      ]
                  ),
                )
            )
        )
    );

  }
}

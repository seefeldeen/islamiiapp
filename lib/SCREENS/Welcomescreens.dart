import 'package:flutter/material.dart';
import 'package:untitled4/core/AppColors.dart';
import 'package:untitled4/core/themedataaaa.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';


class Welcomescreens extends StatefulWidget {
  static const String routeName = "welcome";

   Welcomescreens({super.key});

  @override
  State<Welcomescreens> createState() => _WelcomeScreensState();
}

class _WelcomeScreensState extends State<Welcomescreens> {
  final List<String> welcomePhotos = [
    "assets/images/Frame 3.png",
    "assets/images/welcome.png",
    "assets/images/bearish.png",
    "assets/images/radio.png"
  ];

  final List<String> welcomeQuotes = [
    "Welcome To Islmi App",
    "Reading the Quran",
    "Bearish",
    "Holy Quran Radio"
  ];

  final PageController _pageController = PageController();

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Welcome to your comfort zone',
          style: TextStyle(
            color: Appcolors.Coffee,
          ),
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: PageView.builder(
              controller: _pageController,
              itemCount: welcomePhotos.length,
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(40.0),
                      child: Expanded(
                        child: Image.asset(
                          welcomePhotos[index],
                          fit: BoxFit.contain,
                        ),
                      ),
                    ),
                    SizedBox(height: 20),
                    Text(
                      welcomeQuotes[index],
                      style: TextStyle(
                        color: Appcolors.Coffee,
                        fontSize: 20,
                      ),
                    ),
                  ],
                );
              },
            ),
          ),
          SizedBox(height: 16),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SmoothPageIndicator(
                controller: _pageController,
                count: welcomePhotos.length,
                effect: ExpandingDotsEffect(
                  dotHeight: 8,
                  dotWidth: 8,
                  activeDotColor: Colors.blue,
                  dotColor: Colors.grey,
                ),
              ),
              IconButton(
                onPressed: () {
                  if (_pageController.page == welcomePhotos.length - 1) {
                    Navigator.pushReplacementNamed(context, 'layout'); // Navigate to the next screen
                  } else {
                    _pageController.nextPage(
                      duration: const Duration(milliseconds: 300),
                      curve: Curves.linear,
                    );
                  }
                },
                icon: Icon(
                  Icons.navigate_next,
                  color: Appcolors.Coffee,
                  size: 50,
                ),
              ),
            ],
          ),
          SizedBox(height: 16),
        ],
      ),
    );
  }
}
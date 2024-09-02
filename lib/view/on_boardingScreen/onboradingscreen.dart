import 'package:flutter/material.dart';
import 'package:flutter_application_neww/model/utils/constants/color_connstants.dart';

import 'package:flutter_application_neww/model/utils/constants/image_constants.dart';

import 'package:flutter_application_neww/view/bottom_navbar_screen/bottomnavbar_screen.dart'; // Import the next screen

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          _background_image(),
          _buildgradient_section(
              context), // Pass the context to the _buildgradient_section method
          Positioned(
            top: 30,
            right: 0,
            left: 0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.star,
                  color: Colors.white,
                ),
                SizedBox(
                  width: 10,
                ),
                RichText(
                    text: TextSpan(
                        text: "60k+",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.bold),
                        children: [
                      TextSpan(
                          text: " Premium Recipies",
                          style: TextStyle(
                              fontWeight: FontWeight.normal, fontSize: 16)),
                    ]))
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget _buildgradient_section(BuildContext context) {
    return Positioned(
      bottom: 0,
      left: 0,
      right: 0,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 64, vertical: 60),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.transparent, Colors.black],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 150,
              ),
              Text(
                "Let's Cooking",
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontSize: 56,
                  fontWeight: FontWeight.w500,
                  color: Colors.white,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "Find best recipes for cooking",
                style: TextStyle(fontSize: 16, color: Colors.white),
              ),
              SizedBox(
                height: 40,
              ),
              InkWell(
                onTap: () {
                  // Navigate to the next screen
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => BottomnavbarScreen()),
                  );
                },
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 32, vertical: 16),
                  color: ColorConstants.primaryColor,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Start Cooking",
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Icon(
                        Icons.arrow_forward,
                        color: Colors.white,
                      )
                    ],
                  ),
                ),
              ),
            ]),
      ),
    );
  }

  Container _background_image() {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(ImageConstants.ONBOARDING_SCREEN_BG),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}

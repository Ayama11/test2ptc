import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:test2ptc/core/utils/color_manger.dart';
import 'package:test2ptc/core/utils/styles.dart';

import '../../../../../core/utils/assets_manger.dart';
import '../../../../../core/utils/routing.dart';

class OnboardingScreen extends StatelessWidget {
  final PageController _pageController = PageController();

  OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorApp.primaryColor,
      body: Stack(
        children: [
          PageView(
            controller: _pageController,
            children: const [
              OnboardingPage(
                title: 'Your holiday shopping delivered to your home 🎉',
                description:
                    "There's something for everyone to enjoy with Sweet Shop Favourites",
                imagePath: AssetsManger.onBoarding,
              ),
              OnboardingPage(
                title: 'Best Deals',
                description: 'Get the best deals on fresh products.',
                imagePath: AssetsManger.image,
              ),
              OnboardingPage(
                title: 'Fast Delivery',
                description:
                    'Enjoy fast and reliable delivery to your doorstep.',
                imagePath: AssetsManger.onBoarding,
              ),
            ],
          ),
          Positioned(
            bottom: 30,
            left: 16,
            right: 16,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextButton(
                  onPressed: () {
                    _pageController.jumpToPage(2);
                  },
                  child: const Text(
                    "Skip",
                    style: TextStyle(color: ColorApp.whiteColor),
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    if (_pageController.page == 2) {
                      GoRouter.of(context)
                          .pushReplacement(AppRouter.kMainScreen);
                    } else {
                      _pageController.nextPage(
                        duration: const Duration(milliseconds: 300),
                        curve: Curves.easeInOut,
                      );
                    }
                  },
                  style: ElevatedButton.styleFrom(
                    // minimumSize: const Size(double.infinity, 30),
                    foregroundColor: ColorApp.blackColor,
                    backgroundColor: ColorApp.whiteColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(24),
                    ),
                  ),
                  child: const Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        "Get Started",
                        style: Styles.textStyle14,
                      ),
                      SizedBox(width: 5),
                      Icon(Icons.arrow_forward),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class OnboardingPage extends StatelessWidget {
  final String title;
  final String description;
  final String imagePath;

  const OnboardingPage({
    super.key,
    required this.title,
    required this.description,
    required this.imagePath,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: const TextStyle(
              color: ColorApp.whiteColor,
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
            // textAlign: TextAlign.center,
          ),
          const SizedBox(height: 16),
          Text(
            description,
            style: const TextStyle(
              color: ColorApp.grayTextColor,
              fontSize: 16,
            ),
            //  textAlign: TextAlign.center,
          ),
          const SizedBox(height: 32),
          Center(
            child: Image.asset(
              imagePath,
              width: 200,
              height: 200,
            ),
          ),
        ],
      ),
    );
  }
}

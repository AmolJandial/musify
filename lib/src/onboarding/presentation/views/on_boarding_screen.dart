import 'package:flutter/material.dart';
import 'package:musify/src/onboarding/domain/page_content.dart';
import 'package:musify/src/onboarding/presentation/views/on_boarding_body.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({super.key});

  static const routeName = 'on-boarding';

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  late PageController _pageController;

  @override
  void initState() {
    super.initState();
    _pageController = PageController();
  }

  @override
  void dispose() {
    super.dispose();
    _pageController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.all(16),
              child: SmoothPageIndicator(
                controller: _pageController,
                count: 3,
                effect: SlideEffect(
                  dotWidth: (MediaQuery.of(context).size.width / 3) - 16,
                  dotHeight: 8,
                ),
              ),
            ),
            PageView(
              controller: _pageController,
              children: [
                OnBoardingBody(
                  content: const PageOne(),
                  goToPage: goToPage,
                ),
                OnBoardingBody(
                  content: const PageTwo(),
                  goToPage: goToPage,
                ),
                OnBoardingBody(
                  content: const PageThree(),
                  goToPage: goToPage,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  void goToPage(int index) {
    
    _pageController.animateToPage(
      index,
      duration: const Duration(milliseconds: 300),
      curve: Curves.linear,
    );
  }
}

import 'package:fire_commerce/features/authentications/screens/widgets/on_boarding_dot_navigation.dart';
import 'package:fire_commerce/features/authentications/screens/widgets/on_boarding_next_button.dart';
import 'package:fire_commerce/features/authentications/screens/widgets/on_boarding_page.dart';
import 'package:fire_commerce/features/authentications/screens/widgets/on_boarding_skip.dart';
import 'package:fire_commerce/utils/constants/image_strings.dart';
import 'package:fire_commerce/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';
class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          /// Horizontal Scrollable Pages
          PageView(
            children: const [
              OnBoardingPage(
                image: TImages.onBoardingImage1,
                title: TTexts.onBoardingTitle1,
                subTitle: TTexts.onBoardingSubTitle1,
              ),
              OnBoardingPage(
                image: TImages.onBoardingImage2,
                title: TTexts.onBoardingTitle2,
                subTitle: TTexts.onBoardingSubTitle2,
              ),
              OnBoardingPage(
                image: TImages.onBoardingImage3,
                title: TTexts.onBoardingTitle3,
                subTitle: TTexts.onBoardingSubTitle3,
              ),
            ],
          ),

          /// Skip Button
          const OnBoardingSkip(),

          /// Dot Navigation SmoothPageIndicator
          OnBoardingDotNavigation(),

          ///  Circular Button
          OnBoardingNextButton()
        ],
      ),
    );
  }
}

import 'package:fire_commerce/utils/constants/image_strings.dart';
import 'package:fire_commerce/utils/constants/sizes.dart';
import 'package:fire_commerce/utils/constants/text_strings.dart';
import 'package:fire_commerce/utils/helpers/helper_functions.dart';
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
              OnBoardingPage(image: TImages.onBoardingImage1,title: TTexts.onBoardingTitle1,subTitle: TTexts.onBoardingSubTitle1,),
              OnBoardingPage(image: TImages.onBoardingImage2,title: TTexts.onBoardingTitle2,subTitle: TTexts.onBoardingSubTitle2,),
              OnBoardingPage(image: TImages.onBoardingImage3,title: TTexts.onBoardingTitle3,subTitle: TTexts.onBoardingSubTitle3,),
            ],
          )

          /// Skip Button

          /// Dot Navigation SmoothPageIndicator

          ///  Circular Button
        ],
      ),
    );
  }
}
//---------------------------------------------------------OnBoardingPage Widget For Re Use-----------------------------------------------
class OnBoardingPage extends StatelessWidget {
  const OnBoardingPage({
    super.key, required this.image, required this.title, required this.subTitle,
  });

  final String image, title, subTitle;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(TSizes.defaultSpace),
      child: Column(
        children: [
          Image(
              width: THelperFunctions.screenWidth() * 0.8,
              height: THelperFunctions.screenHeight() * 0.6,
              image:  AssetImage(image)),
          Text(
            title,
            style: Theme.of(context).textTheme.headlineMedium,
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: TSizes.spaceBtwItems),
          Text(
            subTitle,
            style: Theme.of(context).textTheme.bodyMedium,
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}

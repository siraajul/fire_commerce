import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/sizes.dart';
import '../../../../utils/device/device_utility.dart';
import '../../../../utils/helpers/helper_functions.dart';

class OnBoardingDotNavigation extends StatelessWidget {
  const OnBoardingDotNavigation({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Positioned(
        bottom: TDeviceUtils.getBottomNavigationBarHeight() + 20,
        left: TSizes.defaultSpace,
        child:
        SmoothPageIndicator(
          controller: PageController(),
          count: 3,
          effect:  ExpandingDotsEffect(activeDotColor: dark ?TColors.light: TColors.dark, dotHeight: 6),
        )
    );
  }
}

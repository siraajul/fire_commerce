import 'package:fire_commerce/utils/constants/colors.dart';
import 'package:fire_commerce/utils/constants/image_strings.dart';
import 'package:fire_commerce/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

import 'common/products/product_cards/product_card_vertical.dart';

class TestScreen extends StatelessWidget {
  const TestScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return   Scaffold(
      backgroundColor: TColors.light,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(TSizes.md),
              ),
              child: Image(image: AssetImage(TImages.promoBanner1),),
            )
          ],
        ),
      ),
    );
  }
}

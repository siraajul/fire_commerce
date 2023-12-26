import 'package:fire_commerce/utils/constants/colors.dart';
import 'package:fire_commerce/utils/constants/sizes.dart';
import 'package:fire_commerce/utils/device/device_utility.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: TDeviceUtils.getScreenWidth(context),
              padding:  const EdgeInsets.all(TSizes.md),
              decoration:  BoxDecoration(
                color: Colors.transparent,
                borderRadius: BorderRadius.circular(TSizes.cardRadiusLg),
                border: Border.all(color: TColors.black)
              ),
            )
          ],
        ),
      ),
    );
  }
}

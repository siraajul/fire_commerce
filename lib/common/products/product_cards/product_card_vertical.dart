import 'package:fire_commerce/common/styles/shadows.dart';
import 'package:fire_commerce/common/widget/rounded_container.dart';
import 'package:fire_commerce/utils/constants/colors.dart';
import 'package:fire_commerce/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class ProductCardVertical extends StatelessWidget {
  const ProductCardVertical({super.key});

  @override
  Widget build(BuildContext context) {
    return  Container(
      width: 180,
      padding: const EdgeInsets.all(1),
      decoration: BoxDecoration(
        boxShadow: [
          TShadowStyle.verticalProductShadow
        ],
        borderRadius: BorderRadius.circular(TSizes.productImageRadius),
        color: Colors.white
      ),
      child: const Column(
        children: [
          //Thumbnail, Wishlist Button, Discount Tag
          TRoundedContainer(
            height: 200,
            padding: EdgeInsets.all(TSizes.sm),
            backgroundColor: TColors.grey,
            child: Stack(
              children: [
                ///Thumbnail Image
              ],
            ),
          ),
          ///--Details
        ],
      ),
    );
  }
}

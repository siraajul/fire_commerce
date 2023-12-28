import 'package:fire_commerce/features/authentications/screens/login/widget/buttons.dart';
import 'package:fire_commerce/features/authentications/screens/login/widget/login_divider.dart';
import 'package:fire_commerce/features/authentications/screens/login/widget/login_header.dart';
import 'package:fire_commerce/features/authentications/screens/login/widget/login_social.dart';
import 'package:fire_commerce/utils/constants/sizes.dart';
import 'package:fire_commerce/utils/constants/text_strings.dart';
import 'package:fire_commerce/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import '../../../../common/styles/spacing_styles.dart';
import 'package:iconsax/iconsax.dart';

class LogInScreen extends StatelessWidget {
  const LogInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);

    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: TSpacingStyle.paddingAppBarHeight,
          child: Column(
            children: [
              /// Logo, Title & Sub-Title
              LogInHeader(dark: dark),

              /// Form
              Form(
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                      vertical: TSizes.spaceBtwSections),
                  child: Column(
                    children: [
                      /// EMail
                      TextFormField(
                        decoration: const InputDecoration(
                            prefixIcon: Icon(Iconsax.direct_right),
                            labelText: TTexts.email),
                      ),
                      const SizedBox(
                        height: TSizes.spaceBtwInputFields,
                      ),

                      /// Password
                      TextFormField(
                        decoration: const InputDecoration(
                            prefixIcon: Icon(Iconsax.password_check),
                            labelText: TTexts.password,
                            suffixIcon: Icon(Iconsax.eye_slash)),
                      ),
                      const SizedBox(
                        height: TSizes.spaceBtwInputFields / 2,
                      ),

                      ///Remember Me & Forget Password
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          /// Remember Me
                          Row(
                            children: [
                              Checkbox(value: false, onChanged: (value) {}),
                              Text(TTexts.rememberMe)
                            ],
                          ),

                          /// Forget Password
                          TextButton(
                              onPressed: () {},
                              child: Text(TTexts.forgetPassword)),
                        ],
                      ),
                      SizedBox(
                        height: TSizes.spaceBtwSections,
                      ),

                      /// Sign In Button
                      buttons(),
                      SizedBox(
                        height: TSizes.spaceBtwItems,
                      ),

                      /// Create Account Button
                      SizedBox(
                          width: double.infinity,
                          child: OutlinedButton(
                              onPressed: () {},
                              child: Text(TTexts.createAccount))),
                    ],
                  ),
                ),
              ),

              ///Divider
              LogInDivider(dark: dark),

              SizedBox(height: TSizes.spaceBtwSections,),
              ///Footer
              LogInSocial()
            ],
          ),
        ),
      ),
    );
  }
}


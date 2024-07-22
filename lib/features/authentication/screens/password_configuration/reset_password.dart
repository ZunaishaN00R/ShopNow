import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:get/get.dart';
import 'package:shopnow/utils/constants/image_strings.dart';
import 'package:shopnow/utils/constants/sizes.dart';
import 'package:shopnow/utils/constants/text_strings.dart';
import 'package:shopnow/utils/helpers/helper_functions.dart';

class ResetPassword extends StatelessWidget {
  const ResetPassword({super.key});

  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          actions: [
            IconButton(
                onPressed: () => Get.back(),
                icon: const Icon(CupertinoIcons.clear))
          ],
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(TSizes.defaultSpace),
            child: Column(
              children: [
                //   Image
                Image(
                  image: const AssetImage(TImages.delieveredEmailIllustration),
                  width: THelperFunctions.screenWidth() * 0.6,
                ),
                const SizedBox(height: TSizes.spaceBtwSections),
                // Title and SubTitle
                Text(
                  TTexts.changeYourPasswordTitle,
                  style: Theme.of(context).textTheme.headlineMedium,
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: TSizes.spaceBtwItems),
                Text(
                    TTexts.changeYourPasswordSubTitle,
                  style: Theme.of(context).textTheme.labelMedium,
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: TSizes.spaceBtwSections),
                // Button
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                      onPressed: (){}, child: const Text(TTexts.done)),
                ),
                const SizedBox(height: TSizes.spaceBtwSections),
                // Button
                SizedBox(
                  width: double.infinity,
                  child: TextButton(
                      onPressed: (){}, child: const Text(TTexts.resendEmail)),
                ),
              ],
            ),
          ),
        )
    );
  }
}

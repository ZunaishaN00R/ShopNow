import 'package:flutter/cupertino.dart';
import 'package:shopnow/features/authentication/controllers/onboarding/onboarding_controller.dart';
import 'package:shopnow/utils/constants/colors.dart';
import 'package:shopnow/utils/constants/sizes.dart';
import 'package:shopnow/utils/device/device_utility.dart';
import 'package:shopnow/utils/helpers/helper_functions.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class onBoardingDotNavigation extends StatelessWidget {
  const onBoardingDotNavigation({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = OnBoardingController.instance;
    final dark = THelperFunctions.isDarkMode(context);
    return Positioned(
      bottom: TDeviceUtils.getBottomNavigationBarHeight() + 25,
      left: TSizes.defaultSpace,
      child: SmoothPageIndicator(
        controller: controller.pageController,
        onDotClicked: controller.dotNavigationClick,
        count: 3,
        effect: ExpandingDotsEffect(
            activeDotColor: dark ? TColors.light: TColors.dark, dotHeight: 6),
      ),
    );
  }
}
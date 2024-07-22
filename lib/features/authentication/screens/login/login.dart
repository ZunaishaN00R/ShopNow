import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:shopnow/common/styles/spacing_styles.dart';
import 'package:shopnow/common/widgets/login_signup/form_divider.dart';
import 'package:shopnow/common/widgets/login_signup/social_buttons.dart';
import 'package:shopnow/features/authentication/screens/login/widgets/login_form.dart';
import 'package:shopnow/features/authentication/screens/login/widgets/login_header.dart';
import 'package:shopnow/utils/constants/colors.dart';
import 'package:shopnow/utils/constants/image_strings.dart';
import 'package:shopnow/utils/constants/sizes.dart';
import 'package:shopnow/utils/constants/text_strings.dart';
import 'package:shopnow/utils/helpers/helper_functions.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: TSpacingStyle.paddingWithAppBarHeight,
          child: Column(
            children: [
              //   Logo , Title and SubTitle
              TLoginHeader(dark: dark),
              TLoginForm(),
            //   Divider
              TFormDivider(dividerText: TTexts.orSignInWith.capitalize!,),
            const SizedBox(height: TSizes.spaceBtwSections),
            //   Footer
              const TSocialButtons(),
            ],
          ),
        ),
      ),
    );
  }
}




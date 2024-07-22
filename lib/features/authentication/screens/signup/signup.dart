import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:shopnow/common/widgets/login_signup/form_divider.dart';
import 'package:shopnow/common/widgets/login_signup/social_buttons.dart';
import 'package:shopnow/features/authentication/screens/signup/widgets/signup_form.dart';
import 'package:shopnow/utils/constants/colors.dart';
import 'package:shopnow/utils/constants/sizes.dart';
import 'package:shopnow/utils/constants/text_strings.dart';
import 'package:shopnow/utils/helpers/helper_functions.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //   Title
              Text(
                TTexts.signupTitle,
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              const SizedBox(
                height: TSizes.spaceBtwSections,
              ),
              //   Form
              const TSignupForm(),
              const SizedBox(height: TSizes.spaceBtwSections),
            //   Divider
              TFormDivider(dividerText: TTexts.orSignUpWith.capitalize!),
              const SizedBox(height: TSizes.spaceBtwSections),
            //   Social Buttons
              const TSocialButtons(),
            ],
          ),
        ),
      ),
    );
  }
}



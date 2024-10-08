import 'package:e_commerce_application/common/widgets/login_signup/form_divider.dart';
import 'package:e_commerce_application/common/widgets/login_signup/social_buttons.dart';
import 'package:e_commerce_application/features/authetication/screens/signup/widgets/signup_form.dart';
import 'package:e_commerce_application/utils/constants/sizes.dart';
import 'package:e_commerce_application/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

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
              /// Title
              Text(TTexts.signupTitle, style: Theme.of(context).textTheme.headlineMedium),
              const SizedBox(height: TSizes.spaceBtwSections), // For space in between two sections containing abjects

              /// Form
              const TSignupForm(),
              const SizedBox(height: TSizes.spaceBtwInputFields),

              /// Divider
              TFormDivider1(dividerText: TTexts.orSignUpWith.capitalize!),
              const SizedBox(height: TSizes.spaceBtwInputFields),

              /// Social Buttons
              const TSocialButtons(),
            ],
          ),
        ),
      ),
    );
  }
}

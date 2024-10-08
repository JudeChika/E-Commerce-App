import 'package:e_commerce_application/common/styles/spacing_styles.dart';
import 'package:e_commerce_application/features/authetication/screens/login/widgets/login_form.dart';
import 'package:e_commerce_application/features/authetication/screens/login/widgets/login_header.dart';
import 'package:e_commerce_application/utils/constants/sizes.dart';
import 'package:e_commerce_application/utils/constants/text_strings.dart';
import 'package:e_commerce_application/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../common/widgets/login_signup/form_divider.dart';
import '../../../../common/widgets/login_signup/social_buttons.dart';

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
            /// Header (Logo Title & Sub-Title)
            TLoginHeader(dark: dark),

            /// Form
            const TLoginForm(),

            /// Divider
            TFormDivider2(dividerText: TTexts.orSignInWith.capitalize!),
            const SizedBox(height: TSizes.spaceBtwSections),

            /// Footer
            const TSocialButtons()
          ],),
        )
      ),
    );
  }
}
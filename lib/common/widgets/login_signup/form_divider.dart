import 'package:e_commerce_application/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../utils/constants/colors.dart';
import '../../../utils/constants/text_strings.dart';

class TFormDivider1 extends StatelessWidget {
  const TFormDivider1({
    super.key, required String dividerText,
  });

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Flexible(child: Divider(color: dark ? TColors.darkGrey: TColors.grey, thickness: 0.5, indent: 60, endIndent: 5)),
        Text(TTexts.orSignUpWith.capitalize!, style: Theme.of(context).textTheme.labelMedium),
        Flexible(child: Divider(color: dark ? TColors.darkGrey: TColors.grey, thickness: 0.5, indent: 5, endIndent: 60)),
      ],
    );
  }
}

class TFormDivider2 extends StatelessWidget {
  const TFormDivider2({
    super.key, required String dividerText,
  });

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Flexible(child: Divider(color: dark ? TColors.darkGrey: TColors.grey, thickness: 0.5, indent: 60, endIndent: 5)),
        Text(TTexts.orSignInWith.capitalize!, style: Theme.of(context).textTheme.labelMedium),
        Flexible(child: Divider(color: dark ? TColors.darkGrey: TColors.grey, thickness: 0.5, indent: 5, endIndent: 60)),
      ],
    );
  }
}
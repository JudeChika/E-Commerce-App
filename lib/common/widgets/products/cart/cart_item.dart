import 'package:flutter/material.dart';

import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/image_strings.dart';
import '../../../../utils/constants/sizes.dart';
import '../../../../utils/helpers/helper_functions.dart';
import '../../images/t_rounded_image.dart';
import '../../texts/brand_title_text_with_verified_icon.dart';
import '../../texts/product_title_text.dart';

class TCartItem extends StatelessWidget {
  const TCartItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        /// Image
        TRoundedImage(imageUrl: TImages.productImage13, width: 60, height: 60, padding: const EdgeInsets.all(TSizes.sm),
          backgroundColor: THelperFunctions.isDarkMode(context) ? TColors.darkerGrey : TColors.light,
        ),
        const SizedBox(width: TSizes.spaceBtwItems),

        /// Title, Price, & Size
        Expanded(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const TBrandTitleWithVerifiedIcon(title: "Apple"),
              const Flexible(child: TProductTitleText(title: "iPhone 14 Pro", maxLines: 1)),

              /// Attributes
              Text.rich(
                TextSpan(
                  children: [
                    TextSpan(text: "Colour ", style: Theme.of(context).textTheme.bodySmall),
                    TextSpan(text: "White   ", style: Theme.of(context).textTheme.bodyLarge),
                    TextSpan(text: "Memory Size ", style: Theme.of(context).textTheme.bodySmall),
                    TextSpan(text: "128GB", style: Theme.of(context).textTheme.bodyLarge),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
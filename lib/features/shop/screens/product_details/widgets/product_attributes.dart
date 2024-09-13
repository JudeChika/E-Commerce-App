
import 'package:e_commerce_application/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:e_commerce_application/common/widgets/texts/product_price_text.dart';
import 'package:e_commerce_application/common/widgets/texts/product_title_text.dart';
import 'package:e_commerce_application/common/widgets/texts/section_heading.dart';
import 'package:e_commerce_application/utils/constants/colors.dart';
import 'package:e_commerce_application/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

import '../../../../../common/widgets/chips/choice_chip.dart';
import '../../../../../utils/helpers/helper_functions.dart';

class TProductAttributes extends StatelessWidget {
  const TProductAttributes({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Column(
      children: [
        /// Selected Attribute Pricing & Description
        TRoundedContainer(
          padding: const EdgeInsets.all(TSizes.md),
          backgroundColor: dark ? TColors.darkerGrey : TColors.grey,
          child: Column(
            children: [
              /// Title, Price and Stock Status
              Row(
                children: [
                  const TSectionHeading(title: "Variation:", showActionButton: false),
                  const SizedBox(width: TSizes.spaceBtwItems),

                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          const TProductTitleText(title: "Price: ", smallSize: true),

                          /// Actual Price
                          Text("\$500", style: Theme.of(context).textTheme.titleSmall!.apply(decoration: TextDecoration.lineThrough)),
                          const SizedBox(width: TSizes.spaceBtwItems),

                          /// Sales Price
                          const TProductPriceText(price: "450"),
                        ],
                      ),

                      /// Stock
                      Row(
                        children: [
                          const TProductTitleText(title: "Stock: ", smallSize: true),
                          Text("in Stock", style: Theme.of(context).textTheme.titleMedium),
                        ],
                      )
                    ],
                  ),
                ],
              ),

              /// Variation Description
              const TProductTitleText(
                title: "This is the Description of the Product and it can go up to max 4 lines.",
                smallSize: true,
                maxLines: 4,
              )
            ],
          ),
        ),
        const SizedBox(height: TSizes.spaceBtwItems),

        /// Attributes
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const TSectionHeading(title: "Colours", showActionButton: false),
            const SizedBox(height: TSizes.spaceBtwItems / 2),
            Wrap(
              spacing: 8,
              children: [
                TChoiceChip(text: 'White', selected: true, onSelected: (value) {}),
                TChoiceChip(text: 'Yellow', selected: false, onSelected: (value) {}),
                TChoiceChip(text: 'Red', selected: false, onSelected: (value) {}),
                TChoiceChip(text: 'Teal', selected: false, onSelected: (value) {}),
                TChoiceChip(text: 'Black', selected: false, onSelected: (value) {}),
                TChoiceChip(text: 'Green', selected: false, onSelected: (value) {}),
                TChoiceChip(text: 'Purple', selected: false, onSelected: (value) {}),
                TChoiceChip(text: 'Pink', selected: false, onSelected: (value) {}),
                TChoiceChip(text: 'Blue', selected: false, onSelected: (value) {}),
              ],
            ),
          ],
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const TSectionHeading(title: "Memory Size", showActionButton: false),
            const SizedBox(height: TSizes.spaceBtwItems / 2),
            Wrap(
              spacing: 10,
              children: [
                TChoiceChip(text: '32GB', selected: false, onSelected: (value) {}),
                TChoiceChip(text: '64GB', selected: true, onSelected: (value) {}),
                TChoiceChip(text: '128GB', selected: false, onSelected: (value) {}),
                TChoiceChip(text: '256GB', selected: false, onSelected: (value) {}),
                TChoiceChip(text: '512GB', selected: false, onSelected: (value) {}),
              ],
            ),
          ],
        )
      ],
    );
  }
}
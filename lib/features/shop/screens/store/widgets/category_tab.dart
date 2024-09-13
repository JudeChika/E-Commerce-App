import 'package:e_commerce_application/common/widgets/layouts/grid_layout.dart';
import 'package:e_commerce_application/common/widgets/products/product_card/product_card_vertical.dart';
import 'package:e_commerce_application/common/widgets/texts/section_heading.dart';
import 'package:e_commerce_application/features/shop/models/category_model.dart';
import 'package:e_commerce_application/features/shop/models/product_model.dart';
import 'package:e_commerce_application/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

import '../../../../../common/widgets/brand/brand_showcase.dart';
import '../../../../../utils/constants/image_strings.dart';

class TCategoryTab extends StatelessWidget {
  const TCategoryTab({super.key, required this.category});

  final CategoryModel category;

  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      children: [
        Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            children: [
              /// Brands
              const TBrandShowcase(images: [TImages.productImage1, TImages.productImage6, TImages.productImage5]),
              const TBrandShowcase(images: [TImages.productImage1, TImages.productImage6, TImages.productImage5]),
              const SizedBox(height: TSizes.spaceBtwItems),

              /// Products
              TSectionHeading(title: "You might like", onPressed: (){}),
              const SizedBox(height: TSizes.spaceBtwItems),

              TGridLayout(itemCount: 4, itemBuilder: (_, index) => TProductCardVertical(product: ProductModel.empty())),
              const SizedBox(height: TSizes.spaceBtwItems),
            ],
          ),
        ),
      ],
    );
  }
}

import 'package:flutter/material.dart';

import '../../../../../common/widgets/products/cart/add_remove_button.dart';
import '../../../../../common/widgets/products/cart/cart_item.dart';
import '../../../../../common/widgets/texts/product_price_text.dart';
import '../../../../../utils/constants/sizes.dart';

class TCartItems extends StatelessWidget {
  const TCartItems({
    super.key, this.showAddRemoveButton = true,
  });

  final bool showAddRemoveButton;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      shrinkWrap: true,
      itemCount: 3,
      separatorBuilder: (_, __) => const SizedBox(height: TSizes.spaceBtwSections),
      itemBuilder: (_, index) => Column(
        children: [
          /// Cart Item
          const TCartItem(),
          if(showAddRemoveButton) const SizedBox(height: TSizes.spaceBtwItems),

          /// Add Remove Button with Total Price
          if(showAddRemoveButton)
            const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  /// Extra Space
                  SizedBox(width: 70),

                  /// Add Remove Button
                  TProductQuantityWithAddRemoveButton(),
                ],
              ),

              /// Product Total Price
              TProductPriceText(price: "650"),
            ],
          ),
        ],
      ),
    );
  }
}

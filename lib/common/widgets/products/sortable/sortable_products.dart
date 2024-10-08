import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../features/shop/models/product_model.dart';
import '../../../../utils/constants/sizes.dart';
import '../../layouts/grid_layout.dart';
import '../product_card/product_card_vertical.dart';

class TSortableProducts extends StatelessWidget {
  const TSortableProducts({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        /// Dropdown
        DropdownButtonFormField(
          decoration: const InputDecoration(prefixIcon: Icon(Iconsax.sort)),
          onChanged: (value) {},
          items: ["Name", "Higher Price", "Lower Price", "Sale", "Newest", "Popularity"]
              .map((option) => DropdownMenuItem(value: option, child: Text(option))).toList(),
        ),
        const SizedBox(height: TSizes.spaceBtwItems),

        /// Products
        TGridLayout(itemCount: 4, itemBuilder: (_, index) => TProductCardVertical(product: ProductModel.empty())),
      ],
    );
  }
}
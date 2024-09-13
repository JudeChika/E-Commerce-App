
import 'package:e_commerce_application/common/widgets/texts/section_heading.dart';
import 'package:e_commerce_application/features/shop/models/product_model.dart';
import 'package:e_commerce_application/features/shop/screens/product_details/widgets/botton_add_to_cart_widget.dart';
import 'package:e_commerce_application/features/shop/screens/product_details/widgets/product_attributes.dart';
import 'package:e_commerce_application/features/shop/screens/product_details/widgets/product_detail_image.dart';
import 'package:e_commerce_application/features/shop/screens/product_details/widgets/product_meta_data.dart';
import 'package:e_commerce_application/features/shop/screens/product_details/widgets/rating_share_widget.dart';
import 'package:e_commerce_application/features/shop/screens/product_reviews/product_reviews.dart';
import 'package:e_commerce_application/utils/constants/sizes.dart';
import 'package:e_commerce_application/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:readmore/readmore.dart';

class ProductDetailScreen extends StatelessWidget {
  const ProductDetailScreen({super.key, required this.product});

  final ProductModel product;

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Scaffold(
      bottomNavigationBar: const TBottomAddToCart(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            /// Product Image Slide
            const TProductImageSlider(),
            
            /// Product Details
            Padding(
              padding: const EdgeInsets.only(right: TSizes.defaultSpace, left: TSizes.defaultSpace, bottom: TSizes.defaultSpace),
              child: Column(
                children: [
                  /// Rating & Share Button
                  const TRatingAndShare(),

                  /// Price, Title, Stock, & Brand
                  const TProductMetaData(),

                  /// Attributes
                  const TProductAttributes(),
                  const SizedBox(height: TSizes.spaceBtwSections),

                  /// Checkout Button
                  SizedBox(
                      width: double.infinity, child: ElevatedButton(onPressed: () {}, child: const Text("Checkout"))),
                  const SizedBox(height: TSizes.spaceBtwSections),

                  /// Description
                  const TSectionHeading(title: "Description", showActionButton: false),
                  const SizedBox(height: TSizes.spaceBtwItems),
                  const ReadMoreText(
                    "This is an iPhone 14 Pro mobile phone. It comes with amazing features; improved camera, improved battery durability, improved security features, triple bass sound, etc.",
                    trimLines: 2,
                    trimMode: TrimMode.Line,
                    trimCollapsedText: "Show more",
                    trimExpandedText: "Less",
                    moreStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.w800),
                    lessStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.w800),
                  ),

                  /// Reviews
                  const Divider(),
                  const SizedBox(height: TSizes.spaceBtwItems),
                  const SizedBox(height: TSizes.spaceBtwSections),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const TSectionHeading(title: "Reviews (199)", showActionButton: false),
                      IconButton(icon: const Icon(Iconsax.arrow_right_3, size: 18), onPressed: () => Get.to(() => const ProductReviewsScreen())),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

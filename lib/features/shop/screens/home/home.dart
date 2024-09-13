import 'package:e_commerce_application/features/shop/screens/all_products/all_products.dart';
import 'package:e_commerce_application/features/shop/screens/home/widgets/home_categories.dart';
import 'package:e_commerce_application/features/shop/screens/home/widgets/promo_slider.dart';
import 'package:e_commerce_application/utils/constants/image_strings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../common/widgets/custom_shapes/containers/primary_header_container.dart';
import '../../../../common/widgets/custom_shapes/containers/search_container.dart';
import '../../../../common/widgets/layouts/grid_layout.dart';
import '../../../../common/widgets/products/product_card/product_card_vertical.dart';
import '../../../../common/widgets/shimmers/vertical_product_shimmer.dart';
import '../../../../common/widgets/texts/section_heading.dart';
import '../../../../utils/constants/sizes.dart';
import '../../controllers/product_controller.dart';
import 'widgets/home_appbar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(ProductController());
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            /// The Header Class
            const TPrimaryHeaderContainer(
                child: Column(
              children: [
                /// App Bar Class - Located at the base of the home screen
                THomeAppBar(),
                SizedBox(height: TSizes.spaceBtwSections),

                /// Search Bar Class - Located at the top of the home screen
                TSearchContainer(text: "Search in Store"),
                SizedBox(height: TSizes.spaceBtwSections),

                /// Categories Class
                Padding(
                  padding: EdgeInsets.only(left: TSizes.defaultSpace),
                  child: Column(
                    children: [
                      /// Heading
                      TSectionHeading(
                          title: 'Popular Categories',
                          showActionButton: false,
                          textColor: Colors.white),
                      SizedBox(height: TSizes.spaceBtwItems),

                      /// Categories
                      THomeCategories()
                    ],
                  ),
                ),
                SizedBox(height: TSizes.spaceBtwSections),
              ],
            )),

            /// The Body Class
            Padding(
              padding: const EdgeInsets.all(TSizes.defaultSpace),
              child: Column(
                children: [
                  /// Promo Slider
                  const TPromoSlider(),
                  const SizedBox(height: TSizes.spaceBtwSections),

                  /// Heading
                  TSectionHeading(title: 'Popular Products', onPressed: () => Get.to(() => const AllProducts())),
                  const SizedBox(height: TSizes.spaceBtwItems),

                  /// Popular Products
                  Obx(
                    () {
                      if (controller.isLoading.value) return const TVerticalProductShimmer();

                      if (controller.featuredProducts.isNotEmpty) {
                        return Center(child: Text("No Data Found!", style: Theme.of(context).textTheme.bodyMedium));
                      }
                      return TGridLayout(itemCount: controller.featuredProducts.length, itemBuilder: (_, index) => TProductCardVertical(product: controller.featuredProducts[index]));
                    }),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

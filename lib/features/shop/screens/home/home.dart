import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:skyphaa/features/shop/screens/home/widgets/home_appbar.dart';
import 'package:skyphaa/features/shop/screens/home/widgets/home_categories.dart';
import 'package:skyphaa/features/shop/screens/home/widgets/promo_slider.dart';
import '../../../../common/widgets/custom_shapes/containers/primary_header_container.dart';
import '../../../../common/widgets/custom_shapes/containers/search_container.dart';
import '../../../../common/widgets/layouts/grid_layout.dart';
import '../../../../common/widgets/products/product_cards/product_card_vertical.dart';
import '../../../../common/widgets/texts/section_heading.dart';
import '../../../../util/constants/image_strings.dart';
import '../../../../util/constants/sizes.dart';
import '../all_products/all_products.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            /// Header
            const TPrimaryHeaderContainer(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  /// -- Appbar
                  THomeAppBar(),
                  SizedBox(height: TSizes.spaceBtwSections),

                  ///  Searchbar
                  TSearchContainer(text: 'Search in Store'),
                  SizedBox(height: TSizes.spaceBtwSections),

                  ///  Categories
                  Padding(
                    padding: EdgeInsets.only(left: TSizes.defaultSpace),
                    child: Column(
                      children: [
                        /// -- Heading
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
              ),
            ),

            /// Body
            Padding(
              padding: const EdgeInsets.all(TSizes.defaultSpace),
              child: Column(
                children: [
                  /// -- Promo Slider
                  const TPromoSlider(banners: [
                    TImages.promoBanner1,
                    TImages.promoBanner2,
                    TImages.promoBanner3,
                    TImages.promoBanner4,
                    TImages.promoBanner5,
                    TImages.promoBanner6,
                    TImages.promoBanner7,
                    TImages.promoBanner8,
                    TImages.promoBanner9,
                    TImages.promoBanner10,
                    TImages.promoBanner11,
                    TImages.promoBanner12,
                    TImages.promoBanner13,
                  ]),
                  const SizedBox(height: TSizes.spaceBtwSections),

                  /// -- Heading
                   TSectionHeading(title:'Popular Products', onPressed: () => Get.to(() => const AllProducts())),
                  const SizedBox(height: TSizes.spaceBtwItems),

                  /// -- Popular products
                  TGridLayout(itemCount: 18, itemBuilder: (_, index) => const TProductCardVertical(),
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



import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';
import 'package:skyphaa/common/widgets/products/product_cards/product_price_text.dart';
import '../../../../features/shop/screens/product_details/product_detail.dart';
import '../../../../util/constants/colors.dart';
import '../../../../util/constants/image_strings.dart';
import '../../../../util/constants/sizes.dart';
import '../../../../util/helpers/helper_functions.dart';
import '../../../styles/shadows.dart';
import '../../custom_shapes/containers/rounded_continer.dart';
import '../../icons/t_circular_icon.dart';
import '../../images/t_rounded_image.dart';
import '../../texts/product_title_text.dart';
import '../../texts/t_brand_title_with_verified_icon.dart';

class TProductCardVertical extends StatelessWidget {
  const TProductCardVertical({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);

    /// Container with side padding, color, edges, radius and shadow.
    return GestureDetector(
      onTap: () => Get.to(() => const ProductDetailScreen()),
      child: Container(
        width: 180,
        padding: const EdgeInsets.all(1),
        decoration: BoxDecoration(
          boxShadow: [TShadowStyle.verticalProductShadow],
          borderRadius: BorderRadius.circular(TSizes.productImageRadius),
          color: dark ? TColors.darkGrey : TColors.white,
        ),
        child: Column(
          children: [
          /// Thumbnail, Wishlist Button, Discount tag
          TRoundedContainer(
            height: 180,
            padding: const EdgeInsets.all(TSizes.sm),
            backgroundColor: dark ? TColors.dark : TColors.light,
            child: Stack(
              children: [
                /// -- Thumbnail Image
                const TRoundedImage(imageUrl: TImages.productImage62, applyImageRadius: true),

                /// -- Sale Tag
                Positioned(
                  top: 5,
                  child: TRoundedContainer(
                    radius: TSizes.sm,
                    backgroundColor: TColors.secondary.withOpacity(0.8),
                    padding: const EdgeInsets.symmetric(
                        horizontal: TSizes.sm, vertical: TSizes.xs),
                    child: Text('5%',
                        style: Theme.of(context)
                            .textTheme
                            .labelLarge!
                            .apply(color: TColors.black)),
                  ),
                ),

                /// -- Favourite Icon Button
                const Positioned(
                  top:0,
                    right:0,
                    child: TCircularIcon(icon: Iconsax.heart, color: Colors.red)
                ),
              ],
            ),
          ),
             const SizedBox(height: TSizes.spaceBtwItems / 2),

          /// -- Details
                Padding(
                 padding: const EdgeInsets.symmetric(horizontal: TSizes.sm),
                 // Only reason to use the [SizedBox] here is to make Column full Width

                  child: SizedBox(
                   width: double.infinity,

                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                       TProductTitleText(title: 'SKYPHAA-georatte-salwar-suit-4124-405', smallSize: true),
                       const SizedBox(height: TSizes.spaceBtwItems / 2),
                        TBrandTitleWithVerifiedIcon(title: 'Skypha'),

                      ],
                    ),
                 ),
              ) ,

            // Todo: Add Spacer() here to keep the height of each Box same in case 1 or 2 lines of Headings
                 const Spacer(),


            ///Price Row

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ///price
                const Padding(
                  padding: EdgeInsets.only(left: TSizes.sm),
                  child:  TProductPriceText(price: '50.25'),
                ),


                /// Add to Cart Button
                Container(
                  decoration: const BoxDecoration(
                    color: TColors.dark,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(TSizes.cardRadiusMd),
                      bottomRight: Radius.circular(TSizes.productImageRadius),
                    ),
                  ),
                  child: const SizedBox(
                    width: TSizes.iconLg * 1.2,
                    height: TSizes.iconLg * 1.2,
                    child: Center(child: Icon(Iconsax.add_copy, color: TColors.white),
                    ),
                  ),

                ),
              ],
            ),

              ],
            ),
          ),

    );

  }
}



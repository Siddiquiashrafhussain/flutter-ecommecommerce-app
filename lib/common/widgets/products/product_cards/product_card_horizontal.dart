import 'package:flutter/material.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';
import 'package:skyphaa/common/widgets/products/product_cards/product_price_text.dart';
import '../../../../util/constants/colors.dart';
import '../../../../util/constants/image_strings.dart';
import '../../../../util/constants/sizes.dart';
import '../../../../util/helpers/helper_functions.dart';
import '../../custom_shapes/containers/rounded_continer.dart';
import '../../icons/t_circular_icon.dart';
import '../../images/t_rounded_image.dart';
import '../../texts/product_title_text.dart';
import '../../texts/t_brand_title_with_verified_icon.dart';

class TProductCardHorizontal extends StatelessWidget {
  const TProductCardHorizontal({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Container(
      width: 310,
      padding: const EdgeInsets.all(1),
      decoration: BoxDecoration(
        //boxShadow: [TShadowStyle.verticalProductShadow],
        borderRadius: BorderRadius.circular(TSizes.productImageRadius),
        color: dark ? TColors.darkGrey : TColors.softGray,
      ),
      child: Row(
        children: [
          /// Thumbnail
          TRoundedContainer(
            height: 150,
            padding: const EdgeInsets.all(TSizes.sm),
            backgroundColor: dark ? TColors.dark : TColors.light,
            child: Stack(
              children: [
                /// --- Thumbnail Image
                const SizedBox(
                  height:150,
                    width: 150,
                    child: TRoundedImage(imageUrl: TImages.productImage9, applyImageRadius: true),
                ),
                /// -- Sale Tag
                 Positioned(
                  top: 5,
                  child: TRoundedContainer(
                    radius: TSizes.sm,
                    backgroundColor: TColors.secondary.withOpacity(0.8),
                    padding:  const EdgeInsets.symmetric(horizontal: TSizes.sm, vertical: TSizes.xs),
                    child: Text('5%', style: Theme.of(context).textTheme.labelLarge!.apply(color: TColors.black)),
                  ),
                ),

                /// -- Favourite Icon Button
                const Positioned(
                    top:0,
                    right:0,
                    child: TCircularIcon(icon: Iconsax.heart, color: Colors.red),
                ),
              ],
            ),
          ),
          
          /// Details
           Expanded(
            child: SizedBox(
              width: 172,
              child: Padding(
                padding: const EdgeInsets.only(top: TSizes.sm, left: TSizes.sm),
                child: Column(
                  children: [
                      const   Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          TProductTitleText(title: 'Yellow SKYPHAA Half Sleeves shirt', smallSize: true),
                          SizedBox(height: TSizes.spaceBtwItems / 2 ),
                          TBrandTitleWithVerifiedIcon(title: 'SKYPHAA'),
                        ],
                      ),

                     const Spacer(),

                     Row(
                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        /// Pricing
                       const Flexible(child: TProductPriceText(price: '256.0')),

                        /// Add to cart
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
                    )
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

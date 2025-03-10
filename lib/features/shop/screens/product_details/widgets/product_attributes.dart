import 'package:flutter/material.dart';
import '../../../../../common/widgets/chips/choice_chips.dart';
import '../../../../../common/widgets/custom_shapes/containers/rounded_continer.dart';
import '../../../../../common/widgets/products/product_cards/product_price_text.dart';
import '../../../../../common/widgets/texts/product_title_text.dart';
import '../../../../../common/widgets/texts/section_heading.dart';
import '../../../../../util/constants/colors.dart';
import '../../../../../util/constants/sizes.dart';
import '../../../../../util/helpers/helper_functions.dart';

class TProductAttributes extends StatelessWidget {
  const TProductAttributes({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Column(
      children: [
        /// -- Selected Attribute Pricing & Description
        TRoundedContainer(
          padding:  const EdgeInsets.all(TSizes.md),
          backgroundColor: dark ? TColors.darkerGrey : TColors.grey,
          child: Column(
            children: [
              /// Title, Price and Stock Status
              Row(
                children: [
                  const TSectionHeading(title: 'Variation', showActionButton: false),
                  const SizedBox(width: TSizes.spaceBtwItems),
                  
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          const TProductTitleText(title: 'price : ', smallSize: true),

                          /// Actual Price
                          Text(
                            '\$175',
                            style: Theme.of(context).textTheme.titleSmall!.apply(decoration: TextDecoration.lineThrough),
                          ),
                          const SizedBox(width: TSizes.spaceBtwItems),

                          /// Sale Price
                          const TProductPriceText(price: '152')

                        ],
                      ),

                      /// Stock
                      Row(
                        children: [
                          const TProductTitleText(title: 'Stock: ', smallSize: true),
                          Text('In Stock', style: Theme.of(context).textTheme.titleMedium),
                        ],
                      ),
                    ],
                  ),
                    ],
                  ),


              /// Variation Description
              const TProductTitleText(
                title: 'This is the Description of the Product and it can go up to max 5 linea',
                smallSize: true,
                maxLines: 5,
              ),
            ],
          ),
        ),
        const SizedBox(width: TSizes.spaceBtwItems),

        /// -- Attributes
         Column(
           crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const TSectionHeading(title: 'Colors', showActionButton: false),
            const SizedBox(height: TSizes.spaceBtwItems / 2 ),
            Wrap(
              spacing: 8,
              children: [
                TChoiceChip(text: 'Green', selected: false, onSelected: (value){} ),
                TChoiceChip(text: 'Black', selected: true, onSelected: (value){} ),
                TChoiceChip(text: 'Blue', selected: false, onSelected: (value){} ),
                TChoiceChip(text: 'Yellow', selected: false, onSelected: (value){} ),
                TChoiceChip(text: 'Red', selected: false, onSelected: (value){} ),

              ],
            )
          ],
        ),
         Column(
           crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const TSectionHeading(title: 'Size', showActionButton: false),
            const SizedBox(height: TSizes.spaceBtwItems / 2 ),
           Wrap(
             spacing: 10,
             children: [
               TChoiceChip(text: 'EU 32', selected: true, onSelected: (value){} ),
               TChoiceChip(text: 'EU 34', selected: false, onSelected: (value){} ),
               TChoiceChip(text: 'EU 36', selected: false, onSelected: (value){} ),
               TChoiceChip(text: 'EU 38', selected: false, onSelected: (value){} ),
               TChoiceChip(text: 'EU 40', selected: false, onSelected: (value){} ),
               TChoiceChip(text: 'EU 42', selected: false, onSelected: (value){} ),
             ],
           )
          ],
        ),
      ],
    );
  }
}



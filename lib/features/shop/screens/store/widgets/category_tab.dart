import 'package:flutter/material.dart';
import '../../../../../common/widgets/brands/brand_show_case.dart';
import '../../../../../common/widgets/layouts/grid_layout.dart';
import '../../../../../common/widgets/products/product_cards/product_card_vertical.dart';
import '../../../../../common/widgets/texts/section_heading.dart';
import '../../../../../util/constants/image_strings.dart';
import '../../../../../util/constants/sizes.dart';

class TCategoryTab extends StatelessWidget {
  const TCategoryTab({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      children: [
       Padding(
        padding: const  EdgeInsets.all(TSizes.defaultSpace),
        child: Column(
          children: [
            /// -- Brands
            const TBrandShowcase(
              images: [
                TImages.productImage1,
                TImages.productImage2,
                TImages.productImage3,
                TImages.productImage4,
                ],),
            const TBrandShowcase(
              images: [
                TImages.productImage41,
                TImages.productImage32,
                TImages.productImage23,
                TImages.productImage14,
               ],),
            const SizedBox(height: TSizes.spaceBtwItems),

            /// -- Products
            TSectionHeading(title: 'You might like', onPressed: (){}),
            const SizedBox(height: TSizes.spaceBtwItems),

            TGridLayout(itemCount: 10, itemBuilder: (_, index) => const TProductCardVertical()),
             const SizedBox(height: TSizes.spaceBtwItems,)
          ],
        ),
      ),
      ],
    );
  }
}

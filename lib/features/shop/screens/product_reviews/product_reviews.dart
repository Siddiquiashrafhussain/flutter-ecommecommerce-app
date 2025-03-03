import 'package:flutter/material.dart';
import 'package:skyphaa/features/shop/screens/product_reviews/widgets/rating_progress_indicator.dart';
import 'package:skyphaa/features/shop/screens/product_reviews/widgets/user_review_card.dart';
import '../../../../common/widgets/appbar/appbar.dart';
import '../../../../common/widgets/products/ratings/rating_indicator.dart';
import '../../../../util/constants/sizes.dart';

class ProductReviewsScreen extends StatelessWidget {
  const ProductReviewsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return   Scaffold(
      /// -- Appbar
      appBar: const TAppBar(title: Text('Review & Ratings'), showBackArrow: true,),

      /// -- Body
      body: SingleChildScrollView(
        child: Padding(
            padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text("Rating and reviews are verified and are from people who use the same type of device that you use."),
              const SizedBox(height: TSizes.spaceBtwItems),
              
              /// Overall Product Ratings
             const TOverallProductRating(),
              const TRatingBarIndicator(rating: 3.5),
              Text("12,786", style: Theme.of(context).textTheme.bodySmall),
              const SizedBox(height: TSizes.spaceBtwItems),


              /// User Reviews List
              const UserReviewCard(),

              const UserReviewCard(),
              
              const UserReviewCard(),




            ],
          ),
        ),

      ),
    );
  }
}





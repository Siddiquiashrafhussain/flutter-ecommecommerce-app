// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:skypha/common/widgets/appbar/appbar.dart';
// import 'package:skypha/common/widgets/layouts/grid_layout.dart';
// import 'package:skypha/common/widgets/texts/section_heading.dart';
// import 'package:skypha/features/shop/screens/brand/brand_products.dart';
//
// import '../../../../common/widgets/brands/brand_card.dart';
// import '../../../../util/constants/sizes.dart';
//
// class AllBrandsScreen extends StatelessWidget {
//   const AllBrandsScreen({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: const TAppBar(title: Text('Brand'), showBackArrow: true),
//       body: SingleChildScrollView(
//         child: Padding(
//           padding: const EdgeInsets.all(TSizes.defaultSpace),
//           child: Column(
//             children: [
//               /// Heading
//               const TSectionHeading(title: 'Brands', showActionButton: false),
//               const SizedBox(height: TSizes.spaceBtwItems),
//
//               /// -- Brands
//               TGridLayout(
//                 itemCount: 11,
//                 mainAxisExtent: 80,
//                 itemBuilder: (context, index) => TBrandCard(showBorder: true,
//                   onTap: () => Get.to(() => const TBrandProducts()),
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../common/widgets/brands/brand_card.dart';
import '../../../../common/widgets/layouts/grid_layout.dart';
import '../../../../common/widgets/texts/section_heading.dart';
import '../../../../util/constants/sizes.dart';
import 'brand_products.dart';
class AllBrandsScreen extends StatelessWidget {
  const AllBrandsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 18,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Brand'),
          leading: IconButton(
            icon: const Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
          bottom: const TabBar(
            isScrollable: true,
            tabs: [
              Tab(child: Text('Women')),
              Tab(child: Text('Men')),
              Tab(child: Text('Kids')),
              Tab(child: Text('Fashion')),
              Tab(child: Text('Sports')),
              Tab(child: Text('Footwear')),
              Tab(child: Text('Luggage')),
              Tab(child: Text('Accessories')),
              Tab(child: Text('Cosmetics')),
              Tab(child: Text('Perfumes')),
              Tab(child: Text('Jewellery')),
              Tab(child: Text('Electronics')),
              Tab(child: Text('Home & Living')),
              Tab(child: Text('Grocery')),
              Tab(child: Text('Appliances')),
              Tab(child: Text('books')),
              Tab(child: Text('Auto & Accessories')),
              Tab(child: Text('Travels')),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            _buildCategoryTab('Women'),
            _buildCategoryTab('Men'),
            _buildCategoryTab('Kids'),
            _buildCategoryTab('Fashion'),
            _buildCategoryTab('Sports'),
            _buildCategoryTab('Footwear'),
            _buildCategoryTab('Luggage'),
            _buildCategoryTab('Accessories'),
            _buildCategoryTab('Cosmetics'),
            _buildCategoryTab('Perfumes'),
            _buildCategoryTab('Jewellery'),
            _buildCategoryTab('Electronics'),
            _buildCategoryTab('Home & Living'),
            _buildCategoryTab('Grocery'),
            _buildCategoryTab('Appliances'),
            _buildCategoryTab('books'),
            _buildCategoryTab('Auto & Accessories'),
            _buildCategoryTab('Travels'),

          ],
        ),
      ),
    );
  }

  Widget _buildCategoryTab(String categoryTitle) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(TSizes.defaultSpace),
        child: Column(
          children: [
            TSectionHeading(title: categoryTitle, showActionButton: false),
            const SizedBox(height: TSizes.spaceBtwItems),
            TGridLayout(
              itemCount: 18,
              mainAxisExtent: 80,
              itemBuilder: (context, index) => TBrandCard(
                showBorder: true,
                onTap: () => Get.to(() => const TBrandProducts()),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

